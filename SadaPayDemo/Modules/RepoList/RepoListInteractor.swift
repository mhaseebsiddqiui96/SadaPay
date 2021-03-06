//
//  RepoListInteractor.swift
//  SadaPayDemo
//
//  Created by Muhammad Haseeb Siddiqui on 6/20/22.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import Foundation

final class RepoListInteractor {
    
    let repositoryService: RepoListServiceProtocol
    var presenter: RepoListPresenterInterfaceOutput?
    
    internal init(repositoryService: RepoListServiceProtocol) {
        self.repositoryService = repositoryService
    }

}

// MARK: - Extensions -

extension RepoListInteractor: RepoListInteractorInterface {
    
    func getRepositories() {
        repositoryService.getRepoList {[weak self] result in
            guard let self = self else {return}
            switch result {
                
            case .success(let apiRepoList):
                // It is Better to convert this api model to some entity model, as this api model contains logic for parsing json data so this should kept separated.
                self.presenter?.presentListOfRepos(apiRepoList)
            case .failure(let err):
                self.presenter?.presentErrorInFetchingListOfRepos(err)
            }
        }
    }
}
