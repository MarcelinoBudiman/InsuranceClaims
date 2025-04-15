//
//  ClaimDetailView.swift
//  InsuranceClaims
//
//  Created by Marcelino Budiman on 15/04/25.
//

import SwiftUI

struct ClaimDetailView: View {
    
    var claimData: ClaimPost
    
    var body: some View {
        
        HStack {
            Spacer()
                .frame(width: K.deviceWidth * 0.02)
            
            VStack(alignment: .leading) {
                Text(claimData.title)
                    .font(.title)
                    .bold()
                
                Spacer()
                    .frame(height: K.deviceHeight * 0.003)
                
                HStack {
                    
                    Text("Client \(claimData.userID)")
                        .font(.title3)
                    
                    Spacer()
                    
                    Text("Claim No. \(claimData.id)")
                        .font(.title3)
                    
                }
                
                Spacer()
                    .frame(height: K.deviceHeight * 0.008)
                
                Text(claimData.body)
                    .font(.subheadline)
                
                Spacer()
                
            }
            
            Spacer()
                .frame(width: K.deviceWidth * 0.02)
        }
        
    }
}

#Preview {
    ClaimDetailView(claimData: ClaimPost(userID: 1, id: 1, title: "Claim Insurance Body", body: "Hit by a car from traffic light"))
}
