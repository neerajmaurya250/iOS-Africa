//
//  InsetGalleryView.swift
//  Africa
//
//  Created by Mobcoder on 13/07/21.
//

import SwiftUI

struct InsetGalleryView: View {
    
    var animal: Animal
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 12) {
                ForEach(animal.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(20)
                        .frame( width:380, height: 250)
                }
            }
        }
    }
}

struct InsetGalleryView_Previews: PreviewProvider {
    
    static var animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        InsetGalleryView(animal: animals[2])
    }
}
