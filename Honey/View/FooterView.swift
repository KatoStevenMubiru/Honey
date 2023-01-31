//
//  FooterView.swift
//  Honey
//
//  Created by Kato Steven Mubiru on 29/01/2023.
//

import SwiftUI

struct FooterView: View {
    
    @Binding var showBooking: Bool
    
    var body: some View {
        
        HStack {
            Image(systemName: "xmark.circle")
                .font(.system(size:42, weight: .light))
                .padding()
           Spacer()
            
            //Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Button {
               // print("Success")
                self.showBooking.toggle()
            } label: {
                Text("BOOK DESTINATION")
                    .font(.system(.subheadline, design: .rounded, weight: .heavy))
                    .padding(.horizontal, 20)
                    .padding(.vertical, 12)
                    .foregroundColor(.pink)
                    .background {
                        Capsule().stroke(Color.pink, lineWidth: 2.5)
                    }
            }

            
            
            Spacer()
            Image(systemName: "heart.circle")
                .font(.system(size:42, weight: .light))
                .padding()
            
        }//Hstack
    }
}

struct FooterView_Previews: PreviewProvider {
    @State  static var showAlert: Bool = false
    
    static var previews: some View {
        FooterView(showBooking: $showAlert)
    }
}
