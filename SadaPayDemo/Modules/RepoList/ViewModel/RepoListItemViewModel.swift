//
//  RepoListItemViewModel.swift
//  SadaPayDemo
//
//  Created by Muhammad Haseeb Siddiqui on 6/20/22.
//

import Foundation

struct RepoListItemViewModel {
    let userName: String
    let avtar: String
    let repoName: String
    let repoDescription: String
    let starsCount: Int
    let language: String

}

extension RepoListItemViewModel {
    init(model: APIRepositoryItem) {
        self.init(userName: model.owner?.login ?? "--",
                  avtar: model.owner?.avatar_url ?? "",
                  repoName: model.full_name ?? "--",
                  repoDescription: model.description ?? "--",
                  starsCount: model.stargazers_count ?? 0,
                  language: model.language ?? "--")
    }
}
