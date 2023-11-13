//
//  Nil.swift
//  FastSwiftBasic
//
//  Created by 박진우 on 2023/11/13.
//

import SwiftUI

struct Nil: View {
    var name: String = "Jinu"
    var petName: String?        // optional

    var bami: String = "Bami"
    var petName2: String = ""   // string
    var body: some View {
        VStack {
            Text("이름은 \(name), 펫은 \(String(describing: petName)) 입니다.")
            Text("이름은 \(bami), 펫은 \(petName2) 입니다.")
        }
    }
}

struct Nil_Previews: PreviewProvider {
    static var previews: some View {
        Nil()
    }
}
