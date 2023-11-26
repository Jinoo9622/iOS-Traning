//
//  SimpleView.swift
//  WarmUp
//
//  Created by 박진우 on 2023/11/26.
//

import SwiftUI

struct SimpleView: View {
    var body: some View {
        VStack {
            Image(systemName: "pencil")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)

            Text("헤드라인 입니다")
                .bold()
                .font(.headline)
                .padding()

            Text("서브헤드라인 입니다")
                .font(.subheadline)
                .padding()

            Text("바디 입니다")
                .font(.body)
                .padding()

            Button {
                //
            } label: {
                Text("Click Me")
//                    .padding()  // 적용 순서 = 선언 순서
//                    .background(.blue)
//                    .foregroundColor(.white)
//                    .padding()  // 적용 순서 = 선언 순서
            }
            .padding()
            .background(.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
        }
    }
}

struct SimpleView_Previews: PreviewProvider {
    static var previews: some View {
        SimpleView()
    }
}
