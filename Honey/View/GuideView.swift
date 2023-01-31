//
//  GuideView.swift
//  Honey
//
//  Created by Kato Steven Mubiru on 29/01/2023.
//

import SwiftUI

struct GuideView: View {
    @Environment(\.presentationMode) var presentationMode
    
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false){
            
            VStack(alignment:.center, spacing: 20) {
                HeaderComponent()
                
                Spacer(minLength: 10)
                
                Text("Get Started")
                    .fontWeight(.black)
                    .font(.largeTitle)
                    .foregroundColor(.pink)
                
                Text("Discover and pick the best romantic destination for your honeymoon❤️")
                    .lineLimit(nil)
                    .multilineTextAlignment(.center)
                
                Spacer(minLength: 10)
                
                VStack(alignment: .leading, spacing: 25){
                    GuideComponent(title: "Like", subtitle: "Swipe right", description: "Do you like this destination , if  so swipe right!", icon: "heart.circle")
                    
                    GuideComponent(title: "Dismiss", subtitle: "Swipe left", description: "Would you rather skip this place? Touch the screen and swipe left", icon: "xmark.circle")
                    GuideComponent(title: "Book", subtitle: "Tap the button", description: "Our selection of honeymoon resort is perfect for you.", icon: "checkmark.square")
                }//Vstack
                
                Spacer(minLength: 10)
                
                Button {
                    //print("A button was tapped.")
                    self.presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("CONTINUE")
                        .font(.headline)
                        .padding()
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .foregroundColor(.white)
                        .background {
                            Capsule().fill(Color.pink)
                                
                        }
                }

            }//vstack
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding(.top, 15)
            .padding(.bottom, 25)
            .padding(.horizontal,25)
            
        }//scrollView
        
    }
}

struct GuideView_Previews: PreviewProvider {
    static var previews: some View {
        GuideView()
    }
}
