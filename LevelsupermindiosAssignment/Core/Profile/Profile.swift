//
//  Profile.swift
//  LevelsupermindiosAssignment
//
//  Created by enjay on 28/02/25.
//

import SwiftUI

struct Profile: View {
    @State private var selectedTab = "My Library"

    var body: some View {
            ScrollView{
                VStack(spacing: 10) {
                    ProfileSetting()
                        .padding(.vertical)
                    HStack() {
                        StateCard(icon: "fire_icon", text: "17", subtitle: "Day Streak")
                        Spacer()
                        StateCard(icon: "gold_icon", text: "#04", subtitle: "Gold League")
                    }
                    .padding(.vertical)
                    CustomSegment(selectedTab: $selectedTab)
                    if selectedTab == "My Library" {
                        LibraryView()
                    } else {
                        InsightsView()
                    }
                    Spacer()
                    Footer()
                        .padding(.vertical)
                }
                .padding()
                .background(Color(.colorbackground))
            }
            
            .ignoresSafeArea()

        
    }
}

struct LibraryView: View {
    var body: some View {
        VStack {
            Recent(recentText: "Recently Played")
            
            Spacer()
            ListOption()
                .padding(.vertical)
        }
    }
}



#Preview {
    Profile()
}
