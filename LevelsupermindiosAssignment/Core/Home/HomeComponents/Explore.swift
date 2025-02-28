//
//  Explore.swift
//  LevelsupermindiosAssignment
//
//  Created by enjay on 26/02/25.
//

import SwiftUI

struct Explore: View {
    @State var exploreIcons: [[String: String]] = [
        ["self_improvement":"Meditation"],
        ["workout_icon":"Workout"],
        ["Moon":"Sleep"],
        ["Close_icon":"Close"],
        ["mantra_icon":"Mantra"],
        ["calender_icon":"Events"],
        ["courses_icon":"Courses"],
        ["community_icon":"Community"],
        ["timer-icon":"Timer"],
        ["affirmationIcon":"Affirmation"],
        ["music_icon":"Music"],
        ["jurnalism_icon":"Journal"]
    ]
    
    let columns = [
        GridItem(.flexible(), spacing: 20),
        GridItem(.flexible(), spacing: 20),
        GridItem(.flexible(), spacing: 20),
        GridItem(.flexible(), spacing: 20)
    ]
    @State private var showMore: Bool = true
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Explore")
                .font(.title2)
                .foregroundStyle(.white)
                .padding(.top, 20)
            
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(exploreIcons.prefix(showMore ? exploreIcons.count : 4), id: \.self) { item in
                    if let (imageName , label) = item.first {
                        
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .fill(.cardbackground)
                            
                            VStack {
                                Image(imageName)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 40, height: 40)
                                
                                Text(label)
                                    .font(.footnote)
                                    .fontWeight(.semibold)
                                    .foregroundStyle(.white)
                                    .multilineTextAlignment(.center)
                                    .padding(.top, 2)
                            }
                        }
                        .frame(width: 85, height: 85)
                        .onTapGesture {
                            if imageName == "Close_icon" || imageName == "MoreIcon"{
                                showMore.toggle()
                                exploreIcons[3] = showMore ? ["Close_icon": "Close"] : ["MoreIcon": "More"]
                            }
                        }
                    }
                }
            }
            
        }
        .padding()
        
    }
}

#Preview {
    Explore(exploreIcons: [
        ["self_improvement":"Meditation"],
        ["workout_icon":"Workout"],
        ["Moon":"Sleep"],
        ["Close_icon":"Close"],
        ["mantra_icon":"Mantra"],
        ["calender_icon":"Events"],
        ["courses_icon":"Courses"],
        ["community_icon":"Community"],
        ["timer-icon":"Timer"],
        ["affirmationIcon":"Affirmation"],
        ["music_icon":"Music"],
        ["jurnalism_icon":"Journal"]
        
    ])
}
