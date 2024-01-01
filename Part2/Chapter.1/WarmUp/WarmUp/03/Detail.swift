//
//  Detail.swift
//  WarmUp
//
//  Created by 박진우 on 1/1/24.
//

import SwiftUI

struct Detail: View {

    @Binding var isPresented: Bool

    var body: some View {
        Text("Modal Page2")
        Button {
            isPresented = false
        } label: {
            Text("닫기")
        }
    }
}

#Preview {
    Detail(isPresented: .constant(true))
}
