//
//  MyApp.swift
//  WarmUp
//
//  Created by 박진우 on 1/3/24.
//

import SwiftUI

struct MyApp: View {

    @State var showModal: Bool = false

    var body: some View {
        TabView {
            FirstList()
                .tabItem {
                    Label("First", systemImage: "tray.and.arrow.down.fill")
                }

            Text("Page 2")
                .tabItem {
                    Label("Second", systemImage: "tray.and.arrow.down.fill")
                }

            Text("Page 3")
                .tabItem {
                    Label("Third", systemImage: "tray.and.arrow.down.fill")
                }

            Text("Page 4")
                .tabItem {
                    Label("Fourth", systemImage: "tray.and.arrow.down.fill")
                }
        }
        .sheet(isPresented: $showModal, content: {
            TabView {
                OnboardingSample(
                    onboardingTitle: "Onboarding 1",
                    backgroundColor: .blue,
                    isLast: false,
                    showModal: $showModal
                )
                OnboardingSample(
                    onboardingTitle: "Onboarding 2",
                    backgroundColor: .green,
                    isLast: false,
                    showModal: $showModal
                )
                OnboardingSample(
                    onboardingTitle: "Onboarding 3",
                    backgroundColor: .gray,
                    isLast: true,
                    showModal: $showModal
                )
            }
            .tabViewStyle(.page)
        })
        .onAppear { // 해당 view가 호출되면 실행
            showModal = true
        }
    }
}

#Preview {
    MyApp()
}
