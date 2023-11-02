//
//  Loop.swift
//  FastSwiftBasic
//
//  Created by 박진우 on 2023/11/02.
//

import SwiftUI

struct Loop: View {
    let animals: [String] = [
        "dog", "cat", "lion", "tiger", "bird", "fish"
    ]

    var body: some View {
        VStack {
            ForEach(animals, id: \.self) { animal in
                Text(animal)
            }
        }
    }
}

struct Loop_Previews: PreviewProvider {
    static var previews: some View {
        Loop()
    }
}
