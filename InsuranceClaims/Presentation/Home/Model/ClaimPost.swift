//
//  ClaimList.swift
//  InsuranceClaims
//
//  Created by Marcelino Budiman on 14/04/25.
//

import Foundation

struct ClaimPost: Codable, Hashable {
    let userID, id: Int
    let title, body: String

    enum CodingKeys: String, CodingKey {
        case userID = "userId"
        case id, title, body
    }
}
