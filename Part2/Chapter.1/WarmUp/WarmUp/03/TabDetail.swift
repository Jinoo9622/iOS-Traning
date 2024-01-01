//
//  TabDetail.swift
//  WarmUp
//
//  Created by 박진우 on 1/1/24.
//

import SwiftUI

struct TabDetail: View {
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            Text("Tab Detail")
        }
    }
}

struct TabDetail2: View {
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea()
            VStack {
                Text("Tab Detail 2")

                Button {

                } label: {
                    Text("Continue")
                        .padding()
                        .background(.green)
                        .cornerRadius(10.0)
                }
            }
        }
    }
}

struct TabDetail3: View {
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            Text("Tab Detail 3")
        }
    }
}

#Preview {
    TabDetail()
}
