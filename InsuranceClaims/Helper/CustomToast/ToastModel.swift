//
//  ToastModel.swift
//  InsuranceClaims
//
//  Created by Marcelino Budiman on 15/04/25.
//

import Foundation

struct FancyToast: Equatable {
    var type: FancyToastStyle
    var title: String
    var message: String
    var duration: Double = 3
}

