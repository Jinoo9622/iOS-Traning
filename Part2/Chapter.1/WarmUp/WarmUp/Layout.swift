//
//  Layout.swift
//  WarmUp
//
//  Created by 박진우 on 12/2/23.
//

import SwiftUI

struct Layout: View {
    var body: some View {
        VStack {
            Image(systemName: "pencil")
                .resizable()    // 크기 변경 가능
                .scaledToFit()
                .frame(width: 200, height: 200)
                .padding()

            Text("Text Element 1")
                .font(.headline)
                .padding()
            Text("Text Element 2")
                .font(.subheadline)
                .padding()
            Text("Text Element 3")
                .font(.body)
                .padding()

            HStack {
//                Button {
//
//                } label: {
//                    Text("Button 1")
//                        .padding()
//                        .background(.blue)
//                        .foregroundColor(.white)
//                        .font(.headline)
//                        .cornerRadius(10)
//                }
                MyButton(buttonTitle: "Button 1", buttonColor: .blue)

                MyButton(buttonTitle: "Button 2", buttonColor: .green)
            }

            Button {

            } label: {
                VStack {
                    Image(systemName: "arrow.right.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50)
                    Text("Complex Button")
                }
                .foregroundColor(.white)
                .padding()
                .background(.orange)
                .cornerRadius(10)
            }

        }
    }
}

struct Layout_Previews: PreviewProvider {
    static var previews: some View {
        Layout()
    }
}
