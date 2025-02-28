//
//  CustomSegment.swift
//  LevelsupermindiosAssignment
//
//  Created by enjay on 28/02/25.
//

import SwiftUI

struct CustomSegment: View {
    @Binding  var selectedTab: String
    let tabs = ["My Library", "Insights"]
    
    var body: some View {
        VStack(spacing: 0) {
            HStack(spacing: 0) {
                ForEach(tabs, id: \.self) { tab in
                    Button(action: {
                        withAnimation(.easeInOut(duration: 0.3)) {
                            selectedTab = tab
                        }
                    }) {
                        VStack {
                            Text(tab)
                                .font(.system(size: 16, weight: selectedTab == tab ? .semibold : .regular))
                                .foregroundColor(selectedTab == tab ? .white : .gray)
                            
                            Rectangle()
                                .fill(selectedTab == tab ? Color.white : Color.gray.opacity(0.5))
                                .frame(height: selectedTab == tab ? 2 : 1)
                                
                        }
                    }
                    .frame(maxWidth: .infinity)
                }
            }
        }
        
    }
}


