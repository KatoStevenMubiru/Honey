//
//  ContentView.swift
//  Honey
//
//  Created by Kato Steven Mubiru on 29/01/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var showAlert: Bool = false
    @State var showGuide : Bool = false
    
    var body: some View {
        
        VStack {
            
            HoneyView(showGuideView: $showGuide)
            
            Spacer()
            
            CardView(honeymoon: honeymoonData[1])
                .padding()
            
            Spacer()
            
            FooterView(showBooking: $showAlert)
        }// Vstack
        .alert(isPresented: $showAlert) {
            Alert(title: Text("SUCCESS"),message: Text("I want to wish you a very good honey moon. The best out here."), dismissButton: .default(Text("Weyagale mu Honey moon")))
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
