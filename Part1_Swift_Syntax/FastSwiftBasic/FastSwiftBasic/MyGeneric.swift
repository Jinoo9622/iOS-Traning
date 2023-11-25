//
//  MyGeneric.swift
//  FastSwiftBasic
//
//  Created by 박진우 on 2023/11/25.
//

import SwiftUI

struct MyGeneric: View {

    @State var input = ""
    @State var myStack = MyStack<String>()

    var body: some View {
        VStack {
            TextField("숫자를 입력해주세요", text: $input)
            Button {
                myStack.insertValue(input: input)
            } label: {
                Text("저장")
            }

            Button {
                myStack.showData()
            } label: {
                Text("출력")
            }
        }

    }
}

struct MyStack<T> {
    var data: [T] = []

    mutating func insertValue(input: T) {
        data.append(input)
    }

    func showData() {
        data.forEach {
            print($0)
        }
    }
}

//struct MyFloatStack {
//    var data: [Float] = []
//
//    mutating func insertValue(input: Float) {
//        data.append(input)
//    }
//
//    func showData() {
//        data.forEach {
//            print($0)
//        }
//    }
//}

struct MyGeneric_Previews: PreviewProvider {
    static var previews: some View {
        MyGeneric()
    }
}
