//
//  ContentView.swift
//  DarkMood
//
//  Created by abdullah FH  on 10/11/1442 AH.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.colorScheme) var scheme
    var body: some View {
        ZStack {
            VStack{
                VStack{
                    Text("abdullah")
                        .font(.largeTitle)
                        .padding()
                        .foregroundColor(.primary)
                    Image("1")
                        .resizable()
                        .frame(width: 300, height: 300)
                        .border(Color(.black))
                        .cornerRadius(20)
                }
                .padding(50)
            HStack (spacing : 15){
               
                Button(action: {
                    //changing user interface style ..
                    UIApplication.shared.windows.first?.rootViewController?.overrideUserInterfaceStyle = self.scheme == .dark ? .light : .dark
                }) {
                    // for dark mode adoption
                    VStack{
                        Image(systemName: self.scheme == .dark ? "sun.max.fill" : "moon.fill")
                            .resizable()
                            .frame(width: 100, height: 100)
                            .foregroundColor(.primary)
                        Text(self.scheme == .dark ? "الوضع النهاري":"الوضع الليلي")
                            .font(.largeTitle)
                            .padding()
                            .foregroundColor(.primary)
                        
                    }
                }
            }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
