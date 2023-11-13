//
//  Choice.swift
//  FastSwiftBasic
//
//  Created by 박진우 on 2023/11/08.
//

import SwiftUI

enum Animals: String {
    case dog, cat, bird, fish
}

enum Menu {
    case pasta
    case pizza(Int)
    case steak(String)
}

struct Choice: View {

    var direction: Direction = .east
    var animal: Animals = .dog
    var menu1: Menu = .pizza(1)
    var menu2: Menu = .steak("미디움")


    var body: some View {
        VStack {
            Text("방향은 \(direction.rawValue)쪽 입니다")
            Text("좋아하는 동물은 \(animal.rawValue) 입니다")
        }
    }
}

struct Choice_Previews: PreviewProvider {
    static var previews: some View {
        Choice()
    }
}
