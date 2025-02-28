//
//  Home.swift
//  LevelsupermindiosAssignment
//
//  Created by enjay on 26/02/25.
//

import SwiftUI

struct Home: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 10){
                GetStarted()
                Explore()
                Recomndation()
                Recent()
                Learn()
                    .padding(.bottom)
                Featured()
                Footer()
                    .padding(.vertical , 20)
                   
            }
        }
        
        .background(Color(.colorbackground))
        .ignoresSafeArea()
    }
        
}

#Preview {
    Home()
}
