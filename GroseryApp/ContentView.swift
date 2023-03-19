//
//  ContentView.swift
//  GroseryApp
//
//  Created by Marco Alonso Rodriguez on 19/03/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var changeScreen = false
    
    var body: some View {
        NavigationStack {
            VStack (spacing: 50) {
                Image("orange")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
                
                Text("We deliver \n grocery at your doorstep")
                    .font(.system(size: 42, weight: .bold, design: .rounded))
                    .multilineTextAlignment(.center)
                
                Text("Grocerr gives you fresh vegetables and fruits, \n Order fresh at grocerr")
                    .multilineTextAlignment(.center)
                    .foregroundColor(.gray)
                Button() {
                     changeScreen = true
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 50)
                        Text("Get Stated")
                            .foregroundColor(.white)
                            .bold()
                        
                    }
                }.frame(width: 200, height: 70)
                    .foregroundColor(.purple)
            }
            .navigationDestination(isPresented: $changeScreen) {
                Shop()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
