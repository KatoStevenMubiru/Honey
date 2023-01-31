//
//  InfoView.swift
//  Honey
//
//  Created by Kato Steven Mubiru on 31/01/2023.
//

import SwiftUI

struct InfoView: View {
    
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            VStack {
                
                HeaderComponent()
                
            }// Vstack
        }// scroll view
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
