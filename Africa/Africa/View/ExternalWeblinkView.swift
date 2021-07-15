//
//  ExternalWeblinkView.swift
//  Africa
//
//  Created by Mobcoder on 13/07/21.
//

import SwiftUI

struct ExternalWeblinkView: View {
    
    var animal: Animal
    
    var body: some View {
        GroupBox {
            HStack{
                Image(systemName: "globe")
                Text("Wikioedia")
                Spacer()
                
                Group{
                    Image(systemName: "arrow.up.right.square")
                    Link(animal.name, destination: (URL(string: animal.link) ?? URL(string: "https://wikipedia.org"))!)
                }
                .foregroundColor(.accentColor)
            }
        }
    }
}

struct ExternalWeblinkView_Previews: PreviewProvider {
    
    static var animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        ExternalWeblinkView(animal: animals[0])
    }
}
