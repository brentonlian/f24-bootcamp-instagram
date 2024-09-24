//
//  PostView.swift
//  f24-bootcamp-instagram
//
//  Created by Brenton on 9/24/24.
//

import SwiftUI



struct PostView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Image("yellow")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30)
                    .clipShape(Circle())
                Text("test user")
                    .font(.subheadline)
                    .bold()
                Spacer()
                Image(systemName: "ellipsis")
            }
            .padding(.horizontal, 8)
            Image("bamboo")
                .resizable()
                .scaledToFit()
            HStack(spacing: 16) {
                Image(systemName: "heart")
                Image(systemName: "message")
                Image(systemName: "paperplane")
                Spacer()
                Image(systemName: "bookmark")
            }
            .font(.title2)
            Text("100,000 likes")
                .font(.footnote)
                .fontWeight(.semibold)
            Text("My first project in Swift!")
                .font(.footnote)
            Text("September 19th")
                .font(.caption)
                .foregroundStyle(.secondary)
        }
    }
}

#Preview {
    PostView()
}
