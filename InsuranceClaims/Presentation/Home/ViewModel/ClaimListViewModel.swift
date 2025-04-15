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
    
    @Published var searchText: String = ""
    
    @Published var isLoading: Bool = false
    @Published var errorToast: FancyToast?
    
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
            errorToast = FancyToast(type: .error, title: "We're sorry, Something went wrong :(", message: failure.rawValue, duration: 5)
        }
    }
    
}
