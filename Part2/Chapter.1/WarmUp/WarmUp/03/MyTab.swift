//
//  MyTab.swift
//  WarmUp
//
//  Created by 박진우 on 1/1/24.
//

import SwiftUI

struct MyTab: View {
    var body: some View {
        TabView {
            TabDetail()
                .badge(2)
                .tabItem {
                    Label("Received 2", systemImage: "tray.and.arrow.down.fill")
                }
            
            TabDetail2()

            TabDetail3()
                .badge("!") // badge에 string도 입력가능
                .tabItem {
                    Label("Account", systemImage: "person.crop.circle.fill")
                }
        }
        .tabViewStyle(.page(indexDisplayMode: .always))
    }
}

#Preview {
    MyTab()
}
