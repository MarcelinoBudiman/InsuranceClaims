//
//  NetworkError.swift
//  InsuranceClaims
//
//  Created by Marcelino Budiman on 15/04/25.
//

import Foundation

public enum NetworkError: String, Error{
    case authenticationError
    case badRequest
    case outdated
    case failed
    case noData
    case generic
    case alreadyUse = "Subcription Not Found"
    case noInternet = "No Internet"
    case unableToDecode = "The server returned data in an unexpected format. Try updating the app."
    case invalidResponse = "Invalid response"
    case parametersNil = "Parameters were nil"
    case encodingFailed = "Parameters Encoding failed"
    case missingURL = "URL is nil"
}
