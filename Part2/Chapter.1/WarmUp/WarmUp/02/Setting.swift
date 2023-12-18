//
//  Setting.swift
//  WarmUp
//
//  Created by 박진우 on 12/18/23.
//

import SwiftUI

struct SettingInfo: Hashable {
    let title: String
    let systemName: String
    let backgroudColor: Color
    let foregroundColor: Color = .white
}

struct Setting: View {

    let data: [[SettingInfo]] = [
        [
            SettingInfo(
                title: "스크린 타임",
                systemName: "hourglass",
                backgroudColor: .purple
            )
        ],
        [
            SettingInfo(
                title: "일반",
                systemName: "gear",
                backgroudColor: .gray
            ),
            SettingInfo(
                title: "손쉬운 사용",
                systemName: "person.crop.circle",
                backgroudColor: .blue
            ),
            SettingInfo(
                title: "개인정보 보호 및 보안",
                systemName: "hand.raised.fill",
                backgroudColor: .blue
            )
        ],
        [
            SettingInfo(
                title: "암호",
                systemName: "key.fill",
                backgroudColor: .gray
            )
        ]
    ]

    var body: some View {
        NavigationStack {
            List {
                /*
                HStack {
                    Image(systemName: "hourglass")
                    Text("스크린 타임")
                } =
                */
                /*
                 Section {
                    Label {
                        Text("스크린 타임")
                    } icon: {
                        Image(systemName: "hourglass")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                            .padding(.all, 7)
                            .background(.purple)
                            .foregroundStyle(.white)
                            .clipShape(.rect(cornerRadius: 6.0))
                    }
                }

                Section {
                    Label {
                        Text("일반")
                    } icon: {
                        Image(systemName: "gear")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                            .padding(.all, 7)
                            .background(.gray)
                            .foregroundStyle(.white)
                            .clipShape(.rect(cornerRadius: 6.0))
                    }
                    Label {
                        Text("손쉬운 사용")
                    } icon: {
                        Image(systemName: "person.crop.circle")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                            .padding(.all, 7)
                            .background(.blue)
                            .foregroundStyle(.white)
                            .clipShape(.rect(cornerRadius: 6.0))
                    }
                    Label {
                        Text("개인정보 보호 및 보안")
                    } icon: {
                        Image(systemName: "hand.raised.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                            .padding(.all, 7)
                            .background(.blue)
                            .foregroundStyle(.white)
                            .clipShape(.rect(cornerRadius: 6.0))
                    }
                }

                Section {
                    Label {
                        Text("암호")
                    } icon: {
                        Image(systemName: "key.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                            .padding(.all, 7)
                            .background(.gray)
                            .foregroundStyle(.white)
                            .clipShape(.rect(cornerRadius: 6.0))
                    }
                }
                 */

                ForEach(data, id: \.self) { section in
                    Section {
                        ForEach(section, id: \.self) { item in
                            Label {
                                Text(item.title)
                            } icon: {
                                Image(systemName: item.systemName)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 20, height: 20)
                                    .padding(.all, 7)
                                    .background(item.backgroudColor)
                                    .foregroundStyle(item.foregroundColor)
                                    .clipShape(.rect(cornerRadius: 6.0))
                            }
                        }
                    }
                }
            }
            .navigationTitle("설정")
        }
    }
}

#Preview {
    Setting()
}
