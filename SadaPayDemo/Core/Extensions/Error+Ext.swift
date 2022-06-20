//
//  Error+Ext.swift
//  SadaPayDemo
//
//  Created by Muhammad Haseeb Siddiqui on 6/20/22.
//

import Foundation
import Alamofire


extension Error {
    func checkRequestTimeOut() -> Bool {
        if let error = self as? AFError { // hack for now as i know I am using alamofire
            if let underlyingError = error.underlyingError {
                if let urlError = underlyingError as? URLError {
                    switch urlError.code {
                    case .timedOut, .notConnectedToInternet:
                        return true
                    default:
                        break
                    }
                }
            }
            return false
        }
        return false
    }
}


