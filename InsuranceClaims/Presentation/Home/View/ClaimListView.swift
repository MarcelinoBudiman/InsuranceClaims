//
//  ClaimListView.swift
//  InsuranceClaims
//
//  Created by Marcelino Budiman on 14/04/25.
//

import SwiftUI

struct ClaimListView: View {
    
    @StateObject var vm = ClaimListViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(vm.claims, id: \.self) { claimData in
                    ClaimListCell(title: claimData.title, description: claimData.body, userId: claimData.userID, claimId: claimData.id)
                }
            }
            .navigationTitle("Claim List")
        }
    }
}

#Preview {
    ClaimListView()
}
