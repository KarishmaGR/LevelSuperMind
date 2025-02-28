//
//  StateCard.swift
//  LevelsupermindiosAssignment
//
//  Created by enjay on 28/02/25.
//

import SwiftUI

struct StateCard: View {
   
        var icon: String
        var text: String
        var subtitle: String

        var body: some View {
            HStack{
                Image(icon)
                    .font(.system(size: 24))
                    .foregroundColor(.yellow)
                    .padding(.trailing)
                VStack(alignment: .leading) {
                    Text(text)
                        .font(.title2)
                        .foregroundColor(.white)
                    Text(subtitle)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
               
            }
            .frame(width: UIScreen.main.bounds.width * 0.45, height: 70)
            .background(Color(.colorbackground))
            .cornerRadius(12)
            .overlay {
                RoundedRectangle(cornerRadius: 12)
                    .stroke(.gray, lineWidth: 1)
            }
          
        }
    

}


#Preview {
    StateCard(icon: "flame.fill", text: "17", subtitle: "Day Streak")
}
