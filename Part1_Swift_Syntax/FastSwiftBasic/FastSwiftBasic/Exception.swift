//
//  Exception.swift
//  FastSwiftBasic
//
//  Created by 박진우 on 2023/11/18.
//

import SwiftUI

struct Exception: View {

    @State var inputNumber = ""
    @State var resultNumber: Float = -1

    var body: some View {
        VStack {
            TextField("나눌 숫자를 입력해주세요", text: $inputNumber)
            Text("나눈 결과는 다음과 같아요 \(resultNumber)")

            Button {
                do {
                    try resultNumber = divideTen(with: Float(inputNumber) ?? 1.0)
                } catch DivideError.dividedByZero {
                    print("0으로는 나눌 수 없습니다 ㅠ.ㅠ")
                    resultNumber = -999
                } catch {
                    print(error.localizedDescription)
                }
            } label: {
                Text("나누기")
            }
        }
    }

    func divideTen(with inputNumber: Float) throws -> Float {
        var result: Float = 0
        if inputNumber == 0 {
            // error
            throw DivideError.dividedByZero
        } else {
            result = 10 / inputNumber

        }
        return result
    }
}

enum DivideError: Error {
    case dividedByZero
}

struct Exception_Previews: PreviewProvider {
    static var previews: some View {
        Exception()
    }
}
