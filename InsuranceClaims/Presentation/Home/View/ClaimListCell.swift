//
//  ClaimListCell.swift
//  InsuranceClaims
//
//  Created by Marcelino Budiman on 15/04/25.
//

import SwiftUI

struct ClaimListCell: View {
    
    var title: String
    var description: String
    var userId: Int
    var claimId: Int
    
    var body: some View {
        
        
        VStack(alignment: .leading) {
            
            Text(title)
                .font(.headline)
            
            Spacer()
                .frame(height: K.deviceHeight * 0.003)
            
            HStack() {
                Text("Client \(userId)")

                Text("Claim No. \(claimId)")
                    
            }
            .font(.caption)
            .fontWeight(.medium)
            
            Spacer()
                .frame(height: K.deviceHeight * 0.003)
            
            Text(description)
                .font(.subheadline)
                .fontWeight(.light)
                .lineLimit(2)
            
        }
        .frame(maxWidth: .infinity, alignment: .leading)

    }
}

#Preview {
    ClaimListCell(title: "Claim 001", description: "Claim for dental", userId: 1, claimId: 2)
}
