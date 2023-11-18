//
//  Option.swift
//  FastSwiftBasic
//
//  Created by 박진우 on 2023/11/18.
//

import SwiftUI

struct Option: View {

    var jinu: People? = People(name: "jinu", mbti: MBTI(name: "ENFP"))
    var bami = People(name: "bami", petName: "")
    var berry = People(name: "berry", petName: "cookie")

    var body: some View {
        VStack {

            if let jinu = jinu {
                if let mbti = jinu.mbti {
                    if let name = mbti.name {
                        Text("\(name)")
                    }
                }
            }
            // optional chaining
            if let jinuMbtiName = jinu?.mbti?.name {
                Text("\(jinuMbtiName)")
            }


            if let petName = bami.petName {
                Text("이름은 \(bami.name), 애완동물 이름은 \(petName)")
            } else {
                Text("이름은 \(bami.name), 애완동물 이름이 없어요")
            }

            if let petName = berry.petName {
                Text("이름은 \(berry.name), 애완동물 이름은 \(petName)")
            } else {
                Text("이름은 \(berry.name), 애완동물 이름이 없어요")
            }
        }
    }
}

struct People {
    let name: String
    var petName: String?
    var mbti: MBTI?
}

struct MBTI {
    let name: String?
}

struct Option_Previews: PreviewProvider {
    static var previews: some View {
        Option()
    }
}
