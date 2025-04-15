//
//  ClaimListEndpoint.swift
//  InsuranceClaims
//
//  Created by Marcelino Budiman on 15/04/25.
//

import Foundation

enum ClaimListEndpoint{
    case getAllList
}

extension ClaimListEndpoint: EndpointType{
    var baseUrl: URL {
        return AppConfiguration().baseURL
    }
    
    var path: String {
        switch self {
        case .getAllList:
            return "posts"
        }
    }
    
    var httpMethod: HTTPMethod {
        switch self {
        case .getAllList:
            return .get
        }
    }
    
    var task: HTTPTask {
        switch self {
        case .getAllList:
            return .request
        }
    }
    
    var headers: HTTPHeaders? {
        return nil
    }
    
    
}
