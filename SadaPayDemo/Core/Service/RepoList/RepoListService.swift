//
//  RepoListService.swift
//  SadaPayDemo
//
//  Created by Muhammad Haseeb Siddiqui on 6/20/22.
//

import Foundation

protocol RepoListServiceProtocol {
 
    func getRepoList(completion: @escaping((APIResult<APIRepoListModel>) -> Void))
   
}

class RepoListService: BaseAPIClient, RepoListServiceProtocol {
    func getRepoList(completion: @escaping((APIResult<APIRepoListModel>) -> Void)) {
      
        let endPoint = RepoListEndpoint.getRepoList
        let decoder = JSONDecoder()        
        super.request(route: endPoint, decoder: decoder, completion: completion)
    }
}
