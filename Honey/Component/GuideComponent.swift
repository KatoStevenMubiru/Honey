//
//  GuideComponent.swift
//  Honey
//
//  Created by Kato Steven Mubiru on 29/01/2023.
//

import SwiftUI

struct GuideComponent: View {
    var title: String
    var subtitle : String
    var description : String
    var icon : String
    
    
    var body: some View {
        HStack(alignment: .center, spacing: 20) {
            Image(systemName: icon)
                .foregroundColor(.pink)
                .font(.largeTitle)
            
            VStack(alignment: .leading, spacing: 4){
                HStack{
                    Text(title.uppercased())
                        .font(.title)
                        .fontWeight(.heavy)
                    Spacer()
                    
                    Text(subtitle.uppercased())
                        .font(.footnote)
                        .fontWeight(.heavy)
                        .foregroundColor(.pink)
                }// hstack
                Divider().padding(.bottom,4)
                Text(description)
                    .font(.footnote)
                    .foregroundColor(.secondary)
                    .fixedSize(horizontal: false, vertical: true)
            }//vstack
        }// hstack
    }
}

struct GuideComponent_Previews: PreviewProvider {
    static var previews: some View {
        GuideComponent(title: "Title", subtitle: "Swipe right", description: "This is a placeholder sentence, This is a placeholder sentence, This is a placeholder sentence", icon: "heart.circle")
    }
}
