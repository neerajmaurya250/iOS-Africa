//
//  CoverImageView.swift
//  Africa
//
//  Created by Mobcoder on 11/07/21.
//

import SwiftUI

struct CoverImageView: View {
//    Properties
    let coverImage: [CoverImage] = Bundle.main.decode("covers.json")
//    Body
    var body: some View {
        
        TabView{
            ForEach(coverImage) { item in
                Image(item.name)
                            .resizable()
                        .scaledToFill()
            }
        } // TabView
        .tabViewStyle(PageTabViewStyle())
    }
}
// Preview
struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
    }
}
