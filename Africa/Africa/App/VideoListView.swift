//
//  VideoListView.swift
//  Africa
//
//  Created by Mobcoder on 09/07/21.
//

import SwiftUI

struct VideoListView: View {
    
   @State var video: [Video] = Bundle.main.decode("videos.json")
    
    var body: some View {
        NavigationView {
            List {
                ForEach(video) { item in
                    NavigationLink(destination: VideoPlayerView(videoSelected: item.id, videoTitle: item.name)) {
                        VideoListItem(video: item)
                            .padding(.vertical, 8)
                    }
                }
                
            }
            .listStyle(InsetGroupedListStyle())
            .navigationBarTitle("Videos", displayMode: .inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button(action: {
                        video.shuffle()
                    }){
                        Image(systemName: "arrow.2.squarepath")
                    }
                }
            }
        }
        
    }
    
}

struct VideoListView_Previews: PreviewProvider {
    
    
    
    static var previews: some View {
        VideoListView()
    }
}
