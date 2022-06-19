//
//  RepoListEndpoint.swift
//  SadaPayDemo
//
//  Created by Muhammad Haseeb Siddiqui on 6/20/22.
//

import Foundation


enum RepoListEndpoint: Routable {
   
    case getRepoList
    
    var path: String {
        switch self {
        case .getRepoList:
            return baseURLString + "search/repositories?q=language=+sort:stars"
        }
    }
    var params: APIParams? {
        return nil
    }
    
    var method: APIMehtod {
        switch self {
        case .getRepoList:
            return .get
        }
    }
    
    var headers: APIHeaders? {
       return nil
    }
    
    var parameterEncoding: EncodingType {
        switch self {
        case .getRepoList:
            return .urlEncoding
        }
    }
}
