//
//  Half.swift
//  FastSwiftBasic
//
//  Created by 박진우 on 2023/11/02.
//

import SwiftUI

struct Half: View {
    var name: String = "jinu"
    var age: Int = 28
    var names: [String] = [
        "Kim", "Lee", "Park", "Choi", "Jung", "Jeon", "Yang"
    ]

    var body: some View {
        VStack{
            HStack {
                Text("My name is \(name)")
                Image(systemName: "pencil")
            }
            Text("I'm \(age)")

            List {
                ForEach(names, id: \.self) { name in
                    if name == "Park" {
                        Text(name)
                    } else {
                        Text(sayHi(name))
                    }
                }
            }
        }
    }

    func sayHi(_ name: String) -> String {
        return "Hello \(name)~!"
    }
}

struct Half_Previews: PreviewProvider {
    static var previews: some View {
        Half()
    }
}
