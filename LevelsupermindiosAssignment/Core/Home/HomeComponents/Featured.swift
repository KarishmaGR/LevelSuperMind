//
//  Featured.swift
//  LevelsupermindiosAssignment
//
//  Created by enjay on 28/02/25.
//

import SwiftUI

struct Featured: View {
    @State var featuredArray: [[String: String]] = [
        [
            "image": "FeaturedImageOne",
            "title" : "Meditation Series",
            "subtitle" : "Change your thought patterns",
            "auther" : "Ranveer Allahabadia",
            "descreption" : "Break down your thought patterns and understand why you think the way you do to optimise your emotional well-being." ,
            "duration" : "10 Mins"
        ],
        [
            "image": "Featured_imageTwo",
            "title" : "Music",
            "subtitle" : "Change your thought patterns",
            "auther" : "Ranveer Allahabadia",
            "descreption" : "Break down your thought patterns and understand why you think the way you do to optimise your emotional well-being." ,
            "duration" : "10 Mins"
        ],
        [
            "image": "Featured_imageThree",
            "title" : "Workout",
            "subtitle" : "Change your thought patterns",
            "auther" : "Ranveer Allahabadia",
            "descreption" : "Break down your thought patterns and understand why you think the way you do to optimise your emotional well-being." ,
            "duration" : "10 Mins"
        ],
       
        
    ]
    
    var body: some View {
        VStack(alignment: .leading , spacing: 0 ){
                Text("Featured")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .padding(.bottom , 0)
                ScrollView(.horizontal) {
                    LazyHStack() {
                        ForEach(featuredArray , id: \.self) { feature in
                            if let image = feature["image"] , let title = feature["title"] , let subtitle = feature["subtitle"] , let auther = feature["auther"] , let description = feature["descreption"] , let duration = feature["duration"] {
                                
                                ZStack {
                                    Image(image)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 350, height: 350)
                                        .clipShape(RoundedRectangle(cornerRadius: 15))
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 15)
                                                .stroke(Color.white, lineWidth: 3)
                                        )
                                    LinearGradient(
                                        gradient: Gradient(colors: [
                                            .gredientOne.opacity(0.9), Color.clear
                                        ]),
                                        startPoint: .top,
                                        endPoint: .bottom
                                    )
                                    
                                    LinearGradient(
                                        gradient: Gradient(colors: [
                                            .gredientTwo.opacity(0.8),
                                            Color.clear
                                        ]),
                                        startPoint: .bottom,
                                        endPoint: .top
                                    )
                                    
                                    VStack(alignment: .leading) {
                                        Text(title)
                                            .font(.subheadline)
                                            .foregroundStyle(Color(.purple2))
                                        
                                        Text(subtitle)
                                            .font(.headline)
                                            .foregroundStyle(.white)
                                        
                                        Spacer()
                                        
                                        Text(auther)
                                            .font(.subheadline)
                                            .foregroundStyle(.white)
                                        
                                        Text(description)
                                            .font(.footnote)
                                            .foregroundStyle(.white)
                                            .lineLimit(2)
                                            .padding(.vertical)
                                        
                                        
                                        HStack{
                                            ZStack {
                                                RoundedRectangle(cornerRadius: 25)
                                                    .fill(Color(.gray).opacity(0.4))
                                                Text(duration)
                                                    .font(.footnote)
                                                    .fontWeight(.medium)
                                                    .foregroundStyle(.white)
                                                
                                            }
                                            .frame(width: 100)
                                            Spacer()
                                            Image(systemName: "arrowtriangle.right.circle.fill")
                                                .font(.system(size: 40))
                                                .foregroundStyle(.white)
                                            
                                            
                                        }
                                        .frame(height: 40)
                                        
                                    }
                                    .padding()
                                    
                                }
                                .clipShape(RoundedRectangle(cornerRadius: 15))
                                .frame(width: 350)
                                .frame(maxHeight: 350)
                                .scrollTransition(transition: { content, phase in
                                    content
                                        .scaleEffect(phase.isIdentity ? 1.0 : 0.8)
                                })
                                 
                            }
                        }
                    }
                }
                .padding(.top , 10)
            }
            .padding(.leading , 10)
        
            
    }
}

#Preview {
    Featured()
}
