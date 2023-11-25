//
//  MyCar_Protocol.swift
//  FastSwiftBasic
//
//  Created by 박진우 on 2023/11/25.
//

import SwiftUI

protocol Driveable {
    func speedDown(speed: Int) -> Int
}

struct MyCar_Protocol: View {

    var kia: KIA = KIA()
    var hyundai: Hyundai = Hyundai()
    // 어떤 객체들이 동일한 설계(프로토콜)를 가지고 있다면 하나의 collection으로 만들 수 있
    let cars: [Driveable] = [KIA(), Hyundai()]
    @State var kiaSpeed: Int = 100
    @State var hyundaiSpeed: Int = 110

    var body: some View {
        VStack {
            Text("KIA speed: \(kiaSpeed)")
            Button {
                kiaSpeed = kia.speedDown(speed: kiaSpeed)
            } label: {
                Text("감속")
            }
            
            Text("Hyundai speed: \(hyundaiSpeed)")
            Button {
                hyundaiSpeed = hyundai.speedDown(speed: hyundaiSpeed)
            } label: {
                Text("감속")
            }
        }
    }
}

struct KIA: Driveable {
    func speedDown(speed: Int) -> Int {
        return speed - 5
    }
}

struct Hyundai: Driveable {
    func speedDown(speed: Int) -> Int {
        return speed - 10
    }
}

struct MyCar_Protocol_Previews: PreviewProvider {
    static var previews: some View {
        MyCar_Protocol()
    }
}
