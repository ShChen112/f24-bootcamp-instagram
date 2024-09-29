//
//  SwiftUIView.swift
//  Instagram Demo (IOS Bootcamp)
//
//  Created by Sherry Chen on 9/17/24.
//

import SwiftUI

struct SwiftUIView: View {
    @State private var like: Bool = false
    @State private var save: Bool = false
    @State private var likeCount: Int = 0
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
                Button(action: {
                    if self.like == true && likeCount > 0 {
                        likeCount -= 1
                    } else {
                        likeCount += 1
                    }
                    self.like.toggle()
                }) {
                    if self.like == true {
                        Image(systemName:"heart.fill")
                            .foregroundStyle(.red)
                    } else {

                            Image(systemName:"heart")
                                .foregroundStyle(.black)
                        }
                }
                Text("\(likeCount) likes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .padding(.horizontal, -10)
                Image(systemName:"message")
                Image(systemName:"paperplane")
                Spacer()
                Button(action: {self.save.toggle()}) {
                    Image(systemName: self.save == true ? "bookmark.fill" : "bookmark")
                        .foregroundStyle(.black)
                        .font(.title2)
                }
                    
                
            }
            HStack{
                Text("**Cherry** Happy Bunny")
                    .font(.footnote)
                    .padding(.horizontal, 8)
            }
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
