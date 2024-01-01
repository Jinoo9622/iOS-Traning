//
//  Modal.swift
//  WarmUp
//
//  Created by 박진우 on 12/18/23.
//

import SwiftUI

struct Modal: View {

    @State var showModal: Bool = false

    var body: some View {
        VStack {
            Text("메일 페이지 입니다")
            Button {
                showModal = true
            } label: {
                Text("Modal 화면 전환")
            }
        }
        .sheet(isPresented: $showModal) {
            Detail(isPresented: $showModal)
        }
    }
}

#Preview {
    Modal()
}
