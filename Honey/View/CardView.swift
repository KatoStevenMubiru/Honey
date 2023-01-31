//
//  CardView.swift
//  Honey
//
//  Created by Kato Steven Mubiru on 29/01/2023.
//

import SwiftUI

struct CardView: View {
    let id = UUID()
    var honeymoon : Destination
    
    var body: some View {
        Image(honeymoon.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(24)
            .frame(minWidth: 0, maxWidth: .infinity)
            .overlay {
                VStack(alignment: .center, spacing: 12) {
                    Spacer()
                    Text(honeymoon.place.uppercased())
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .shadow(radius: 2)
                        .padding(.horizontal, 18)
                        .padding(.bottom, 4)
                        .overlay (
                            Rectangle()
                                .fill(Color.white)
                                .frame(height: 1),
                            alignment: .bottom
                                
                        )
                    Text(honeymoon.country.uppercased())
                        .foregroundColor(.black)
                        .fontWeight(.bold)
                        .font(.footnote)
                        .frame(minWidth: 55)
                        .padding(.horizontal,10)
                        .padding(.vertical, 5)
                        .background {
                            Capsule().fill(Color.white)
                        }
                }// Vstack
                .frame(minWidth: 280)
                .padding(.bottom, 50)
            
            }// overlay
           
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(honeymoon: honeymoonData[1])
    }
}
