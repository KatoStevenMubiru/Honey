//
//  InfoView.swift
//  Honey
//
//  Created by Kato Steven Mubiru on 31/01/2023.
//

import SwiftUI

struct InfoView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        ScrollView(.vertical,showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                
                HeaderComponent()
                
                Spacer(minLength: 10)
                
                Text("App Info")
                    .fontWeight(.black)
                    .font(.largeTitle)
                    .foregroundColor(.pink)
                
                HStack{
                    Text("Application").foregroundColor(.gray)
                    Spacer()
                    Text("Honey")

                }//hstack
                HStack{
                    Text("Compatibilty").foregroundColor(.gray)
                    Spacer()
                    Text("Iphone,Ipad")

                }//hstack
                HStack{
                    Text("Developer").foregroundColor(.gray)
                    Spacer()
                    Text("K.S.M")

                }//hstack
                
                Text("Credits")
                    .fontWeight(.black)
                    .font(.largeTitle)
                    .foregroundColor(.pink)
                
                HStack{
                    Text("Photos").foregroundColor(.gray)
                    Spacer()
                    Text("Unsplash")

                }//hstack
                
                Spacer(minLength: 10)
                Button {
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

            }// Vstack
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding(.top, 15)
            .padding(.bottom, 25)
            .padding(.horizontal,25)
        }// scroll view
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
