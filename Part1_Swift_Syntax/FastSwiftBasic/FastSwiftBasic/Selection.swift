//
//  Selection.swift
//  FastSwiftBasic
//
//  Created by 박진우 on 2023/11/13.
//

import SwiftUI

enum Direction: String {
    case north = "북"
    case west = "서"
    case east = "동"
    case south = "남"
}

struct Selection: View {

    @State var myDirection: Direction = .south

    var body: some View {
        VStack {
            switch myDirection {
            case .north:
                Text("북쪽은 추워요")
            case .west:
                Text("서쪽은 석양이 예뻐요")
            case .east:
                Text("동쪽으로 해 보러 갈래요?")
            case .south:
                Text("남쪽으로 쉬러가요!")
            default:
                Text("ERROR!!!")
            }

            Button {
                switch myDirection {
                case .north:
                    myDirection = .east
                case .west:
                    myDirection = .north
                default:
                    myDirection = .west
                }
            } label: {
                Text("돌리기")
            }
        }
    }
}

struct Selection_Previews: PreviewProvider {
    static var previews: some View {
        Selection()
    }
}
