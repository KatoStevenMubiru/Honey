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
        
        for index in 0..<2{
            views.append(CardView(honeymoon: honeymoonData[index]))
        }
        return views
    }()
    
    private func isTopCard(cardView: CardView)-> Bool{
        guard let index = cardViews.firstIndex(where: {$0.id == cardView.id}) else {
            return false
        }
        return index == 0
    }
    enum DragState{
        case inactive
        case pressing
        case dragging(translation :CGSize)
        
        var translation : CGSize{
            switch self{
            case .inactive, .pressing:
                return .zero
            case .dragging( let translation):
                return translation
            }
        }//translation
        
    }//enum
    
    var body: some View {
        
        VStack {
            
            
            
            
            
            HoneyView(showGuideView: $showGuide, showInfoView: $showInfo)
            
            Spacer()
            
            // cards
            ZStack{
                ForEach(cardViews) {
                    
                    cardView in cardView
                        .zIndex(self.isTopCard(cardView: cardView) ? 1 : 0)
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
