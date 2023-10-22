//
//  MyCollections.swift
//  FastSwiftBasic
//
//  Created by 박진우 on 2023/10/22.
//

import SwiftUI

struct MyCollections: View {

    // array
    var foods: [String] = ["eggs", "bananas", "beans"]
    // var foods: Array<String> = ["eggs", "bananas", "beans"]
    // set
    var jazzs: Set<String> = ["dab", "dap", "labdap"]
    var hiphop: Set<String> = ["labdap", "rap", "wow"]
    // dictionary
    var koEngDict: [String: String] = ["사과":"Apple", "바나나": "Banana"]

    var body: some View {
        VStack {

            // array
            //Text(foods[0])
            //Text(foods[1])
            //Text(foods[2])

            // set
            //Text(hiphop.intersection(jazzs).description)

            /*
            Button {
                var intersectionMusic = hiphop.intersection(jazzs)
                Text()
            } label: {
                Text("hit!")
            }
             */

            // dictionary
            Text(koEngDict["사과"]!)
            Text(koEngDict["바나나"]!)
        }
    }
}

struct MyCollections_Previews: PreviewProvider {
    static var previews: some View {
        MyCollections()
    }
}
