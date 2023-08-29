//
//  ContentView.swift
//  ViewModifierOverlay
//
//  Created by Enrique on 28/08/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 4)
                .fill(.blue)
                .overlay(alignment: .bottomTrailing) {
                    Image(systemName: "figure.run")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100,height: 240)
                        .offset(x: -40)
                }
            HStack{
                VStack(alignment: .leading) {
                    Text("SwiftUI")
                        .fontWidth(.compressed)
                        .font(.system(size: 80,weight: .bold))
                        .padding(.bottom, -40)
                    Text("Suscribete al\ncanal de SWIFTBETA!")
                        .multilineTextAlignment(.center)
                        .fontWidth(.compressed)
                        .foregroundColor(.orange)
                        .font(.system(size: 26, weight: .bold))
                        .frame(width: 200, height: 100)
                    Spacer()
                    Text("SwiftBeta")
                        .fontWidth(.standard)
                        .foregroundColor(.white)
                        .font(.system(size: 18, weight: .bold))
                    HStack(alignment: .lastTextBaseline) {
                        Image(systemName: "applelogo")
                            .font(.footnote)
                            .foregroundColor(.white)
                        Text("Mobile Developer Enrique Durand")
                            .fontWidth(.standard)
                            .foregroundColor(.white)
                            .fontWeight(.regular)
                            .font(.system(size: 14))
                        Image(systemName: "applelogo")

                    }
                    .padding(.bottom, 12)
                }
                .padding(.leading, 12)
                .padding(.top, 6)
                Spacer()
            }
        }
        .frame(height: 230)
        .padding(.horizontal,12)
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
