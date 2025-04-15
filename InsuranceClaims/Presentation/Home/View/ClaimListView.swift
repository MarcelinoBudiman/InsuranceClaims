//
//  ClaimListView.swift
//  InsuranceClaims
//
//  Created by Marcelino Budiman on 14/04/25.
//

import SwiftUI

struct ClaimListView: View {
    var body: some View {
        NavigationStack {
            List {
                ClaimListCell(title: "Claim 001", description: "Claim for dental", userId: 1, claimId: 1)
                ClaimListCell(title: "Claim 002", description: "Claim for dental", userId: 1, claimId: 2)
                ClaimListCell(title: "Claim 003", description: "Claim for dental", userId: 1, claimId: 2)
            }
            .navigationTitle("Claim List")
        }
    }
}

#Preview {
    ClaimListView()
}
