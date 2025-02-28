//
//  Footer.swift
//  LevelsupermindiosAssignment
//
//  Created by enjay on 28/02/25.
//

import SwiftUI

struct Footer: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text("Made Mindfully in ")
                    .font(.system(size: 18))
                    .foregroundStyle(Color(.footer))
                
                Image("India_flage")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30 , height: 30)
            }
            Text("Clear Mind \nBetter Performance")
                .font(.system(size: 35))
                .fontWeight(.semibold)
                .fontDesign(.serif)
                .foregroundStyle(Color(.footer))
                .frame(maxWidth: .infinity, alignment: .leading)
                
            
        }
        .padding(.leading , 10)
        
    }
    
}

#Preview {
    Footer()
}
