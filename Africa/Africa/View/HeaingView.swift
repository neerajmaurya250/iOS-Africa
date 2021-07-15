//
//  HeaingView.swift
//  Africa
//
//  Created by Mobcoder on 13/07/21.
//

import SwiftUI

struct HeaingView: View {
    
    var headingImage: String
    var headingText: String
    
    var body: some View {
        HStack {
            Image(systemName: headingImage)
                .foregroundColor(.accentColor)
            
            Text(headingText)
                .fontWeight(.bold)
                .font(.title3)
        }
        .padding(.vertical)
    }
}

struct HeaingView_Previews: PreviewProvider {
    static var previews: some View {
        HeaingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in pictures.")
    }
}
