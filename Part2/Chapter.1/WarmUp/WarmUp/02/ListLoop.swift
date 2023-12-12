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
    @State var favoriteFruits = [
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

    @State var fruitName: String = ""

    var body: some View {
        NavigationStack {
            VStack {

                HStack {
                    TextField("Insert fruit name", text: $fruitName)
                    Button {
                        favoriteFruits.append(Fruit(name: fruitName, matchFruitName: "inserted", price: 1000))
                    } label: {
                        Text("Insert")
                            .padding()
                            .background(.blue)
                            .foregroundStyle(.white)
                            .clipShape(.rect(cornerRadius: 10.0))
                    }
                }
                .padding()

                List {
                    ForEach(favoriteFruits, id: \.self) { fruit in
                        VStack(alignment: .leading) {
                            Text("name: \(fruit.name)")
                            Text("match: \(fruit.matchFruitName)")
                            Text("price: \(fruit.price)")
                        }
                    }.onDelete { indexSet in
                        if let index = indexSet.first {
                            print("will removed: \(favoriteFruits[index])")
                        }
                        favoriteFruits.remove(atOffsets: indexSet)
                    }
                }
                .navigationTitle("Fruit List")
            }
        }
    }
}

#Preview {
    ListLoop()
}
