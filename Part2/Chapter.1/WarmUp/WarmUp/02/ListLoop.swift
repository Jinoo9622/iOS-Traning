//
//  ListLoop.swift
//  WarmUp
//
//  Created by 박진우 on 12/12/23.
//

import SwiftUI

struct ListLoop: View {

    var fruits = [ 
        "Apple", "Banana", "Cherry", "Double Kiwi", "Elder berry"
    ]

    var price = ["1000", "3000", "4000", "2400", "8000"]
    var count = 0

    var body: some View {
        NavigationStack {
            List {
                ForEach(fruits, id: \.self) { fruit in
                    HStack {
                        Text(fruit)
                        Text(price[count])
                    }
                }
            }
            .navigationTitle("Fruit List")
        }
    }
}

#Preview {
    ListLoop()
}
