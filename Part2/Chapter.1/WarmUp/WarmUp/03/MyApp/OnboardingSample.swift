//
//  OnboardingSample.swift
//  WarmUp
//
//  Created by 박진우 on 1/3/24.
//

import SwiftUI

struct OnboardingSample: View {

    let onboardingTitle: String
    let backgroundColor: Color
    var isLast: Bool
    @Binding var showModal: Bool

    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            VStack {
                Text(onboardingTitle)
                if isLast {
                    Button {
                        showModal = false
                    } label: {
                        Text("Start")
                    }
                }
            }
        }
    }
}

#Preview {
    OnboardingSample(
        onboardingTitle: "온보딩 테스트", 
        backgroundColor: Color.cyan,
        isLast: true,
        showModal: .constant(true)
    )
}
