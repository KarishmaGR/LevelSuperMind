//
//  ContentView.swift
//  LevelsupermindiosAssignment
//
//  Created by enjay on 26/02/25.
//

import SwiftUI

import SwiftUI

struct ContentView: View {
    
    init() {
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor(resource: .colorbackground)
        
        UITabBar.appearance().standardAppearance = appearance
        UITabBar.appearance().scrollEdgeAppearance = appearance
    }
    
    var body: some View {
        TabView {
            Home()
                .tabItem {
                    Image(systemName: "house").font(.system(size: 50))
                    Text("Home")
                       
                }
            
                
            
            Profile()
                .tabItem {
                    Image(systemName: "person")
                    Text("You")
                }
                .tint(.white)
        }
        .tint(.white)
    }
}



#Preview {
    ContentView()
}
