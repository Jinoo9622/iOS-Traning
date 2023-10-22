//
//  VariableType.swift
//  FastSwiftBasic
//
//  Created by 박진우 on 2023/10/19.
//

import SwiftUI

struct VariableType: View {

    var name: String = "Jinu"
    var age: Int = 20
    var height: Float = 181.3
    var weight: Double = 70.5
    var havePet: Bool = false

    var body: some View {
        VStack {
            //Text(10)    // String만 입력가능 - error
            Text("10")
            Text("\(name)")
            Text("\(age)")
            Text("\(height)")
            Text("\(weight)")
            Text("\(havePet.description)")
        }
    }
}

struct VariableType_Previews: PreviewProvider {
    static var previews: some View {
        VariableType()
    }
}
