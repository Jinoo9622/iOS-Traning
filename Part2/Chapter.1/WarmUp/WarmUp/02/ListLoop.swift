//
//  ListLoop.swift
//  WarmUp
//
//  Created by 박진우 on 12/12/23.
//

import SwiftUI

struct Fruit: Hashable {
    let name: String
    let matchFruitName: String
    let price: Int
}

struct ListLoop: View {
    var favoriteFruits = [
        Fruit(
            name: "Apple",
            matchFruitName: "Banana",
            price: 1000
        ),
        Fruit(
            name: "Banana",
            matchFruitName: "Banana",
            price: 3000
        ),
        Fruit(
            name: "Cherry",
            matchFruitName: "Double Kiwi",
            price: 4000
        ),
        Fruit(
            name: "Double Kiwi",
            matchFruitName: "Elder berry",
            price: 2400
        ),
        Fruit(
            name: "Elder berry",
            matchFruitName: "Double Kiwi",
            price: 8000
        )
    ]

    var body: some View {
        NavigationStack {
            List {
                ForEach(favoriteFruits, id: \.self) { fruit in
                    VStack(alignment: .leading) {
                        Text("name: \(fruit.name)")
                        Text("match: \(fruit.matchFruitName)")
                        Text("price: \(fruit.price)")
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
