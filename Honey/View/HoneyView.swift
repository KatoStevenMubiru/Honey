//
//  HoneyView.swift
//  Honey
//
//  Created by Kato Steven Mubiru on 29/01/2023.
//

import SwiftUI

struct HoneyView: View {
    @Binding var showGuideView : Bool
    @Binding var showInfoView : Bool
    
    var body: some View {
        
        HStack {
            Button {
                print("Information")
            } label: {
                Image(systemName: "info.circle")
                    .font(.system(size: 24, weight: .regular))
                    
            }//button: label
            .accentColor(.primary)
            
            Spacer()
            
          Image("logo-honeymoon-pink")
                .resizable()
                .scaledToFit()
                .frame(height: 30)
            Spacer()
            
            Button {
                //print("Guide")
                self.showGuideView.toggle()
            } label: {
                Image(systemName: "questionmark.circle")
                    .font(.system(size: 24, weight: .regular))
                    
            }
            .accentColor(.primary)
            .sheet(isPresented: $showGuideView) {
                GuideView()
            }
            
        }//Hstack
        .padding()
    }
}

struct HoneyView_Previews: PreviewProvider {
    @State static var showGuide : Bool = false
    @State static var showInfo : Bool = false
    static var previews: some View {
        HoneyView(showGuideView: $showGuide, showInfoView: $showInfo)
    }
}
