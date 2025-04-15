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
        
        VStack(alignment: .leading) {
            Text(claimData.title)
                .font(.title)
                .bold()
            
            HStack {
                
                Text("Client \(claimData.userID)")
                    .font(.title3)
                
                Spacer()
                
                Text("Claim No. \(claimData.id)")
                    .font(.title3)
                
            }
            
            Text(claimData.body)
                .font(.subheadline)
            
            Spacer()
            
        }
        
    }
}

#Preview {
    ClaimDetailView(claimData: ClaimPost(userID: 1, id: 1, title: "Claim Insurance Body", body: "Hit by a car from traffic light"))
}
