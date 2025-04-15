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
        HStack {
            Spacer()
            
            VStack(alignment: .leading) {
                Text(title)
                    .font(.headline)
                Text(description)
                    .font(.subheadline)
            }
           
            
            Spacer()
            
            VStack(alignment: .trailing) {
                Text("Client \(userId)")
                    .font(.caption)
                Text("Claim No. \(claimId)")
                    .font(.caption)
            }
            
            Spacer()
        }
    }
}

#Preview {
    ClaimListCell(title: "Claim 001", description: "Claim for dental", userId: 1, claimId: 2)
}
