//
//  SwiftUIView.swift
//  Instagram Demo (IOS Bootcamp)
//
//  Created by Sherry Chen on 9/17/24.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8){
            HStack{
                Image(.cherry)
                    .resizable()
                    .scaledToFit()
                    .frame(width:30)
                    .clipShape(Circle())
                Text("Cherry")
                    .font(.subheadline)
                    .bold()
                Spacer()
                Image(systemName: "ellipsis")
                        
            }
            .padding(.horizontal, 8)
            Image(.bunny2)
                .resizable()
                .scaledToFit()
            
            HStack(spacing: 16){
                Image(systemName:"heart")
                Image(systemName:"message")
                Image(systemName:"paperplane")
                Spacer()
                Image(systemName:"bookmark")
            }
            .font(.title2)
                Text("100 likes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .padding(.horizontal, 8)
                Text("**Cherry** Happy Bunny")
                    .font(.footnote)
                    .padding(.horizontal, 8)
                Text("1 hour ago")
                    .font(.caption)
                    .foregroundStyle(.secondary)
                    .padding(.horizontal, 8)
            
        }
    }
}

#Preview {
    SwiftUIView()
}
