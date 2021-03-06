//
//  VideoListItem.swift
//  Africa
//
//  Created by Mobcoder on 13/07/21.
//

import SwiftUI

struct VideoListItem: View {
    
    var video: Video
    
    var body: some View {
        HStack {
            ZStack {
                Image(video.thumbnail)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 90)
                .cornerRadius(10)
                
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 30)
                    .shadow(radius: 4)
            } //ZStack
            VStack(alignment: .leading, spacing: 8) {
                Text(video.name)
                    .font(.title2)
                    .foregroundColor(.accentColor)
                .fontWeight(.heavy)
                
                Text(video.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
            } //VStack
        } //HStack
    }
}

struct VideoListItem_Previews: PreviewProvider {
    
    static var videos: [Video] = Bundle.main.decode("videos.json")
    
    static var previews: some View {
        VideoListItem(video: videos[0])
    }
}
