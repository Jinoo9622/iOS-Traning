//
//  Onboarding.swift
//  WarmUp
//
//  Created by 박진우 on 12/7/23.
//

import SwiftUI

struct Onboarding: View {
    var body: some View {
        VStack {
            Text("What's New in Photos")
                .font(.largeTitle)
                .bold()
                .padding(.vertical, 50)

            HStack {
                Image(systemName: "person.2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 35)
                    .padding(.leading, 7)
                    .foregroundStyle(.blue)

                VStack(alignment: .leading) {
                    Text("Shared Library")
                        .font(.headline)

                    Text("Combine photos and videos with the pople closest to you and automatically share new phtos from Camera.")
                        .font(.subheadline)
                        .foregroundStyle(.gray)
                }
                .padding(.trailing)
            }
            .padding(.vertical)

            HStack {
                Image(systemName: "slider.horizontal.2.square.on.square")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 35)
                    .padding(.leading, 7)
                    .foregroundStyle(.blue)

                VStack(alignment: .leading) {
                    Text("Copny & Paste Edits")
                        .font(.headline)

                    Text("Combine photos and videos with the pople closest to you and automatically share new phtos from Camera.")
                        .font(.subheadline)
                        .foregroundStyle(.gray)
                }
                .padding(.trailing)
            }
            .padding(.vertical)

            HStack {
                Image(systemName: "square.on.square")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 35)
                    .padding(.leading, 7)
                    .foregroundStyle(.blue)

                VStack(alignment: .leading) {
                    Text("Merge Duplicates")
                        .font(.headline)

                    Text("Combine photos and videos with the pople closest to you and automatically share new phtos from Camera.")
                        .font(.subheadline)
                        .foregroundStyle(.gray)
                }
                .padding(.trailing)
            }
            .padding(.vertical)

            Spacer()

            Button {

            } label: {
                Text("Continue")
                    .padding()
//                    .frame(maxWidth: .infinity)
                    .frame(width: 350)
                    .background(.blue)
                    .foregroundStyle(.white)
                    .clipShape(.capsule)
            }
            .padding(.bottom, 60)
        }
    }
}

#Preview {
    Onboarding()
}
