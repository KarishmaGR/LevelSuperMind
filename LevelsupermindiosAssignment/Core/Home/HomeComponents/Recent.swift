//
//  Recent.swift
//  LevelsupermindiosAssignment
//
//  Created by enjay on 28/02/25.
//

import SwiftUI

struct Recent: View {
    @State var recomndedImageandContent: [[String: String]] = [
        ["image": "RecomdedImageTwo",
         "title" : "Meditation 10 min",
         "subtitle": "Freedom Series",
         "owner": "Akhil Aryan"
        ],
        ["image": "RecomendedImageOne",
         "title" : "Meditation Series",
         "subtitle": "Freedom Series",
         "owner": "Akhil Aryan",
         "new": "New"
        ],
        ["image": "RecomdedImageTwo",
         "title" : "Meditation Series",
         "subtitle": "Freedom Series",
         "owner": "Akhil Aryan",
         "new": "New"
        ]
    ]
    var recentText = "Recents"
    
    var body: some View {
        VStack(alignment: .leading){
        
                HStack{
                    Text(recentText)
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .padding(10)
                    
                    Spacer()
                    Button{
                        
                    }label: {
                        Text("See All")
                            .font(.subheadline)
                            .foregroundStyle(Color(.white))
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.horizontal , 10)
        
        ScrollView(.horizontal){
                HStack{
                    ForEach(recomndedImageandContent , id: \.self) { recomdation in
                        if let image = recomdation["image"] , let title = recomdation["title"], let subtitle = recomdation["subtitle"] , let owner = recomdation["owner"] {
                            VStack(alignment: .leading){
                                if let new = recomdation["new"] {
                                    ZStack(alignment: .topLeading){
                                        Image(image)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 150, height: 150, alignment: .center)
                                            .clipShape(RoundedRectangle(cornerRadius: 10))
                                        VStack {
                                            HStack {
                                                Text(new)
                                                    .font(.caption)
                                                    .bold()
                                                    .foregroundColor(.black)
                                                    .padding(.horizontal, 12)
                                                    .padding(.vertical, 4)
                                                    .background(Color.yellow)
                                                    .clipShape(RoundedRectangle(cornerRadius: 2 ))
                                                    .padding([.top], 10)
                                                Spacer()
                                            }
                                            Spacer()
                                        }
                                        
                                        VStack {
                                            Spacer()
                                            HStack {
                                                Spacer()
                                                Text("1/5")
                                                    .font(.caption)
                                                    .foregroundColor(.white)
                                                    .padding(6)
                                                    .background(Color.black.opacity(0.7))
                                                    .clipShape(Capsule())
                                                    .padding([.bottom, .trailing], 10)
                                            }
                                        }
                                        
                                    }
                                    .frame(width: 150 , height: 150)
                                    
                                }else{
                                    Image(image)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 150, height: 150, alignment: .center)
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                                }
                                
                                
                                Text(title)
                                    .font(.footnote)
                                    .fontWeight(.medium)
                                    .foregroundStyle(Color(.greentext))
                                
                                Text(subtitle)
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                                    .foregroundStyle(.white)
                                
                                Text(owner)
                                    .font(.footnote)
                                    .fontWeight(.regular)
                                    .foregroundStyle(.gray)
                                
                            }
                            .padding(10)
                            
                        }
                        
                    }
                }
            }
            
        }
    }
}

#Preview {
    Recent()
}
