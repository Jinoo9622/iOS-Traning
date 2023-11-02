//
//  Condition.swift
//  FastSwiftBasic
//
//  Created by 박진우 on 2023/10/22.
//

import SwiftUI

struct Condition: View {

    var hasLoggedIn = true

    var body: some View {
        if hasLoggedIn {
            Text("로그아웃 하시겠습니까?")
        } else {
            Text("로그인 하시겠습니까?")
        }
    }
}

struct Condition_Previews: PreviewProvider {
    static var previews: some View {
        Condition()
    }
}
