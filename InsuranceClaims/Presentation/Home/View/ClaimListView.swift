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
            ZStack {
                if vm.isLoading {
                    ProgressView()
                } else {
                    
                    List(vm.filteredClaimList, id: \.self) { claimData in
             
                        ZStack {
                            ClaimListCell(title: claimData.title, description: claimData.body, userId: claimData.userID, claimId: claimData.id)
                            
                            NavigationLink(destination: ClaimDetailView(claimData: claimData),
                            label: {}).opacity(0)
                        }
  
                    }
   
                    
                }
            }
            .navigationTitle("Claim List")
            .navigationDestination(for: ClaimPost.self) { claimData in
                ClaimDetailView(claimData: claimData)
            }
            .searchable(text: $vm.searchText)
            
        }
        .task {
            await vm.getAllClaimList()
        }
    }
}

#Preview {
    ClaimListView()
}
