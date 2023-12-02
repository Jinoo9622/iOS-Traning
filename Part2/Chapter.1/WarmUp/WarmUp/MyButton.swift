//
//  MyButton.swift
//  WarmUp
//
//  Created by 박진우 on 12/2/23.
//

import SwiftUI

struct MyButton: View {
    var buttonTitle: String
    var buttonColor: Color

    var body: some View {
        Button {

        } label: {
            Text(buttonTitle)
                .padding()
                .background(buttonColor)
                .foregroundColor(.white)
                .font(.headline)
                .cornerRadius(10)
        }
    }
}

struct MyButton_Previews: PreviewProvider {
    static var previews: some View {
        MyButton(buttonTitle: "Button 4", buttonColor: .brown)
    }
}
