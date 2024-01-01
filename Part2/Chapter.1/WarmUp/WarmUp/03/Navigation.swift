//
//  Navigation.swift
//  WarmUp
//
//  Created by 박진우 on 1/1/24.
//

import SwiftUI

struct NavigationItem: Hashable {
    let title: String
    let description: String
}

struct Navigation: View {

    let navigationItems = [
        NavigationItem(title: "Go to DetailView", description: "Destination"),
        NavigationItem(title: "Go to DetailView 2", description: "Destination 2")
    ]

    @State var showModal = false

    var body: some View {
        NavigationStack {
            List {
                ForEach(navigationItems, id: \.self) { item in
                    NavigationLink {
                        Text(item.description)
                    } label: {
                        Text(item.title)
                    }
                }
            }
            .toolbar {
                ToolbarItem {
                    Button {
                        showModal = true
                    } label: {
                        Text("Add")
                    }
                }
            }
            .sheet(isPresented: $showModal) {
                Text("Add Item")
            }
            .navigationTitle("Navigation Title")
        }
    }
}

#Preview {
    Navigation()
}
