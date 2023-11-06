//
//  Diff.swift
//  FastSwiftBasic
//
//  Created by 박진우 on 2023/11/06.
//

import SwiftUI

struct Diff: View {

    let myCarStruct = CarStruct(name: "Car - struct", owner: "jinu")
    let myCarClass = CarClass(name: "Car - class", owner: "jinoo")

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

class CarClass {
    var name: String
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
