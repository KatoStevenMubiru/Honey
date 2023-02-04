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
    @State var showInfo : Bool = false
    
    var cardViews : [CardView] = {
        var views = [CardView]()
        
        for honeymoon in honeymoonData{
            views.append(CardView(honeymoon: honeymoon))
        }
        return views
    }()
    
    var body: some View {
        
        VStack {
            
            
            
            
            
            HoneyView(showGuideView: $showGuide, showInfoView: $showInfo)
            
            Spacer()
            
            // cards
            
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
