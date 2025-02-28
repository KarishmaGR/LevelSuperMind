//
//  Learn.swift
//  LevelsupermindiosAssignment
//
//  Created by enjay on 28/02/25.
//

import SwiftUI

struct Learn: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Learn")
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundStyle(Color(.white))
                .padding(.vertical)
           
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color(.learn))
                
                HStack{
                    Image("Learn")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100 , height: 100)
                    
                    VStack(alignment: .leading , spacing: 5){
                        Text("How to meditate like a monk")
                            .font(.system(size: 16))
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.leading)
                            .foregroundStyle(Color(.white))
                            .padding(.trailing , 20)
                        
                        Button{
                            
                        }label: {
                            Text("Read More")
                                .font(.system(size: 15))
                                .foregroundStyle(.white).opacity(0.8)
                                
                        }
                    }
                    Spacer()
                    Spacer()
                    ZStack{
                        Circle()
                            .fill(.sharebtn)
                            .frame(width: 40 , height: 40)
                        
                        Image("share_btn")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20 , height: 20)
                            
                    }
                }
                .padding(.horizontal)
            }
            .frame(height: 90)
            
        }
        .padding(.horizontal)
    }
}

#Preview {
    Learn()
}
