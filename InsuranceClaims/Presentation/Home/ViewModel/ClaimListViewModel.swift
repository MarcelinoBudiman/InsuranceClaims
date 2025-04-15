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
    
    @Published var claimList: [ClaimPost] = []
    
    var filteredClaimList: [ClaimPost] {
        if searchText.isEmpty {
            claimList
        } else {
            claimList.filter { $0.title.localizedStandardContains(searchText) }
        }
    }
    
    @Published var errorMessage: String = ""
    
    @Published var searchText: String = ""
    
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
