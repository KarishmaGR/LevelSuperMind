//
//  ProfileSetting.swift
//  LevelsupermindiosAssignment
//
//  Created by enjay on 28/02/25.
//

import SwiftUI

struct ProfileSetting: View {
    var body: some View {
        HStack {
            ZStack(alignment: .bottomTrailing){
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.green)
                
                Image(systemName: "pencil.circle.fill")
            }
            
            VStack(alignment: .leading) {
                Text("Sourav 😎")
                    .font(.title2)
                    .foregroundColor(.white)
                Button{
                    
                }label: {
                    Text("Level Premium User >")
                        .font(.subheadline)
                        .foregroundColor(.yellow)
                }
            }
            Spacer()
            
            Button(action: {
              
            }) {
                Image(systemName: "gearshape.fill")
                    .resizable()
                    .frame(width: 24, height: 24)
                    .foregroundColor(.white)
            }
        }
        .padding(.vertical)
    }
}

#Preview {
    ProfileSetting()
}
