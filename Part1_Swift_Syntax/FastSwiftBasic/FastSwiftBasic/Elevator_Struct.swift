//
//  Elevator_Struct.swift
//  FastSwiftBasic
//
//  Created by 박진우 on 2023/11/06.
//

import SwiftUI

struct Elevator: View {
//    @State var floor: Int = 1
//
//    var body: some View {
//        VStack {
//            Text("층수: \(floor)")
//
//            HStack {
//                Button {
//                    floor = goDown(floor)
//                } label: {
//                    Text("아래로")
//                }
//
//                Button {
//                    floor = goUp(floor)
//                } label: {
//                    Text("위로")
//                }
//            }
//        }
//    }
//
//    func goDown(_ floor: Int) -> Int{
//        return floor - 1
//    }
//
//    func goUp(_ floor: Int) -> Int{
//        return floor + 1
//    }

    @State var myElevator = ElevatorStruct()

    var body: some View {
        VStack {
            Text("층수: \(myElevator.floor)")

            HStack {
                Button {
                    myElevator.goDown()
                } label: {
                    Text("아래로")
                }

                Button {
                    myElevator.goUp()
                } label: {
                    Text("위로")
                }
            }
        }
    }
}

struct ElevatorStruct {
    // Property
    var floor: Int = 1
    // Method
    mutating func goDown() {
        floor = floor - 1
    }
    mutating func goUp() {
        floor = floor + 1
    }
}

struct Elevator_Previews: PreviewProvider {
    static var previews: some View {
        Elevator()
    }
}
