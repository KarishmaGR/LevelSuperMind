//
//  GetStarted.swift
//  LevelsupermindiosAssignment
//
//  Created by enjay on 26/02/25.
//

import SwiftUI

struct GetStarted: View {
    var body: some View {
        VStack{
            ZStack(alignment: .top){
                Image("background")
                    .resizable()
                    .scaledToFit()
                HStack{
                    
                    HStack{
                        ZStack{
                            RoundedRectangle(cornerRadius: 25)
                                .fill(Color(.cardbackground))
                            HStack{
                                Text("2")
                                    .font(.headline)
                                    .foregroundStyle(.white)
                                Image("fire_icon")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 30 , height: 30)
                                    .padding(.vertical , 10)
                            }
                        }
                        .frame(width: 80)
                        ZStack{
                            RoundedRectangle(cornerRadius: 25)
                                .fill(Color(.cardbackground))
                            HStack{
                                Text("Rank 5")
                                    .font(.headline)
                                    .foregroundStyle(.white)
                                Image("gold_icon")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 30 , height: 30)
                                    .padding(.vertical , 10)
                            }
                        }
                        .frame(width: 110)
                    }
                    .padding(.top , 120)
                    
                    Spacer()
                    
                    ZStack{
                        Circle()
                            .fill(.cardbackground)
                            Image("gift_icon")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30 , height: 30)
                                .padding(10)
                    }
                    .padding(.top , 120)
                    
                }
                .frame(height: 40)
                .padding([.leading, .trailing], 20)
            }
            VStack(alignment: .leading){
                Text("Get Started")
                    .font(.title2)
                    .foregroundStyle(.white)
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(.border,lineWidth: 3)
                        .fill(Color(.cardbackground))
                    
                    HStack(alignment: .center , spacing: 50 ){
                        VStack(alignment: .leading , spacing: 10){
                            Text("Meditation Series")
                                .font(.footnote)
                                .foregroundStyle(.border)
                            
                            Text("Manage your emotions")
                                .foregroundStyle(.white)
                                .padding(.trailing, 10)
                            HStack{
                                Image("line_frame")
                                  
                                    
                                Text("9")
                                    .font(.footnote)
                                    .foregroundStyle(.white)
                            }
                            Text("Ranveer Allahbadia")
                                .font(.footnote)
                                .foregroundStyle(.white)
                        }
                        Image("Getstarted")
                    }
                    .padding(15)
                    
                }
                
                
            }
            .padding()
        }
        .background(Color(.colorbackground))
        .ignoresSafeArea()
    }
}

#Preview {
    GetStarted()
}
