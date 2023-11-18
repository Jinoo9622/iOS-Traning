//
//  Sample.swift
//  FastSwiftBasic
//
//  Created by 박진우 on 2023/11/18.
//

import SwiftUI

struct Sample: View {

    let data = [
        Destination(
            direction: .north,
            food: "Pasta",
            image: Image(systemName: "carrot")
        ),
        Destination(
            direction: .east,
            food: nil,
            image: Image(systemName: "sunrise")
        )
        ,
        Destination(
            direction: .south,
            food: nil,
            image: Image(systemName: "balloon")
        )
        ,
        Destination(
            direction: .west,
            food: "West Food",
            image: Image(systemName: "cursor.rays")
        )
    ]

    @State var selectedDestination: Destination?

    var body: some View {
        VStack {
            selectedDestination?.image
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)

            if let destination = selectedDestination {
                Text(destination.direction.rawValue)
                if let food = destination.food{
                    Text(food)
                }
            }

            Button {
                selectedDestination = data.randomElement()
            } label: {
                Text("돌려요")
            }

        }
    }
}

struct Destination {
    let direction: Direction
    let food: String?
    let image: Image
}

enum Direction: String {
    case north = "북"
    case east = "동"
    case south = "남"
    case west = "서 "
}

struct Sample_Previews: PreviewProvider {
    static var previews: some View {
        Sample()
    }
}
