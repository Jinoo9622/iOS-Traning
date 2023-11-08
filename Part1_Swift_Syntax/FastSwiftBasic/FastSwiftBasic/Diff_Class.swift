//
//  Diff.swift
//  FastSwiftBasic
//
//  Created by 박진우 on 2023/11/06.
//

import SwiftUI

struct Diff: View {

    let myCarStruct = CarStruct(name: "Car - struct", owner: "jinu")
    @ObservedObject var myCarClass = CarClass(name: "Car - class", owner: "jinoo")
    // State: View(struct)안의 값이 변경되는 경우, View가 변경되어 다시 그려질 때, 초기화되지 않고, 저장되어있음 (저장된 값을 불러옴..)
    @State var name: String = ""

    var body: some View {
        VStack {
            Text("\(myCarStruct.name)는 \(myCarStruct.owner) 소유입니다.")
            Button {
                var broCar = myCarStruct
                broCar.name = "동생차"
                broCar.owner = "동생"

                myCarStruct.sayHi()
            } label: {
                Text("출발")
            }

            Text("\(myCarClass.name)는 \(myCarClass.owner) 소유입니다.")
            Button {
                let broCar = myCarClass
                broCar.name = "동생차"
                broCar.owner = "동생"

                myCarClass.sayHi()
            } label: {
                Text("출발")
            }
        }
    }
}

struct CarStruct {
    var name: String
    var owner: String

    func sayHi() {
        print("Hi \(name) \(owner)")
    }
}

class CarClass: ObservableObject {
    // Published: ObservableObject의 해당 변수(property)가 변경될 때, ObservedObject에게 update 요청
    @Published var name: String
    var owner: String

    func sayHi() {
        print("Hi \(name) \(owner)")
    }

    init(name: String, owner: String) {
        self.name = name
        self.owner = owner
    }
}

struct Diff_Previews: PreviewProvider {
    static var previews: some View {
        Diff()
    }
}
