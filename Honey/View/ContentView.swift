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
    
    private func isTopCard(cardView: CardView)-> Bool{
        guard let index = cardViews.firstIndex(where: {$0.id == cardView.id}) else {
            return false
        }
        return index == 0
    }
    
    var body: some View {
        
        VStack {
            
            
            
            
            
            HoneyView(showGuideView: $showGuide, showInfoView: $showInfo)
            
            Spacer()
            
            // cards
            ZStack{
                ForEach(cardViews) {
                    
                    cardView in cardView
                }
                .padding(.horizontal)
                
            }// zstack
            
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
