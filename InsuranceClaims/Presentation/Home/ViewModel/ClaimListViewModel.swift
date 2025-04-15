//
//  ClaimListViewModel.swift
//  InsuranceClaims
//
//  Created by Marcelino Budiman on 15/04/25.
//

import SwiftUI
import Foundation

class ClaimListViewModel: ObservableObject {
    
    let claimListNetworkClient = NetworkSessionClient<ClaimListEndpoint>()
    
    @Published var claims: [ClaimPost] = [ClaimPost(userID: 1, id: 1, title: "Claim 001", body: "Claim for dental operation"),
                                          ClaimPost(userID: 1, id: 2, title: "Claim 005", body: "Claim for dental operation"),
                                          ClaimPost(userID: 2, id: 1, title: "Claim 0046", body: "Claim for dental operation"),
                                          ClaimPost(userID: 2, id: 2, title: "Claim 0098", body: "Claim for dental operation")]
    
    @Published var claimList: [ClaimPost] = []
    @Published var errorMessage: String = ""
    @Published var isLoading: Bool = false
    
    @MainActor
    func getAllClaimList() async {
        self.isLoading = true
        
        let result = await claimListNetworkClient.sendRequest(endpoint: .getAllList, responseModel: [ClaimPost].self)
        switch result {
        case .success(let data):
            self.isLoading = false
            claimList.removeAll()
            claimList.append(contentsOf: data)
            
        case .failure(let failure):
            self.isLoading = false
            errorMessage = failure.rawValue
        }
    }
    
}
