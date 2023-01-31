//
//  HeaderComponent.swift
//  Honey
//
//  Created by Kato Steven Mubiru on 29/01/2023.
//

import SwiftUI

struct HeaderComponent: View {
    var body: some View {
        
        VStack {
            
            Capsule()
                .frame(width: 120, height: 6)
                .foregroundColor(.secondary)
                .opacity(0.2)
            
            
            Image("logo-honeymoon")
                .resizable()
                .scaledToFit()
                .frame(height: 30)
            
        }//vstack
    }
}

struct HeaderComponent_Previews: PreviewProvider {
    static var previews: some View {
        HeaderComponent()
    }
}
