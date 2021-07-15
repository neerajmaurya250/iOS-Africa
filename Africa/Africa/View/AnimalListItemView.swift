//
//  AnimalListItemView.swift
//  Africa
//
//  Created by Mobcoder on 12/07/21.
//

import SwiftUI

struct AnimalListItemView: View {
    
    let animal: Animal
    
    var body: some View {
        HStack {
            Image(animal.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 90, height: 90)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            
            VStack(alignment: .leading, spacing: 5) {
                Text(animal.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                .foregroundColor(.accentColor)
                
                Text(animal.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing, 8)
            } // VStack
        } // HStack
    }
}

struct AnimalListItemView_Previews: PreviewProvider {
    
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        AnimalListItemView(animal: animals[1])
    }
}
