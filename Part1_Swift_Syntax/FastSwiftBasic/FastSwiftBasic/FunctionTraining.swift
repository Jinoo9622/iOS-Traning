//
//  FunctionTraining.swift
//  FastSwiftBasic
//
//  Created by 박진우 on 2023/11/02.
//

import SwiftUI

struct FunctionTraining: View {
    @State var inputNumber: Int = 4

    var body: some View {
        VStack {
            Text("Input number is \(inputNumber)")

            Button {
                inputNumber = plusFive(inputNumber)
                //inputNumber += 5
            } label: {
                Text("+5")
            }
        }
    }

    func plusFive(_ input: Int) -> Int {
        return input + 5
    }
}

struct FunctionTraining_Previews: PreviewProvider {
    static var previews: some View {
        FunctionTraining()
    }
}
