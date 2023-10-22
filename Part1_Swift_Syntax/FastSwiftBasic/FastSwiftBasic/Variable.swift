//
//  Variable.swift
//  FastSwiftBasic
//
//  Created by 박진우 on 2023/10/19.
//

import SwiftUI

struct Variable: View {

    var place1: String = "Tokyo"
    var place2: String = "Jeju"

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text(place1)
            Text(place2)
            Text("\(place1) in quotes!")
            Text("\(place2) in quotes!")
        }
        .padding()
    }
}

struct Variable_Previews: PreviewProvider {
    static var previews: some View {
        Variable()
    }
}
