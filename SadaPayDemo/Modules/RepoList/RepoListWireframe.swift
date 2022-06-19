//
//  RepoListWireframe.swift
//  SadaPayDemo
//
//  Created by Muhammad Haseeb Siddiqui on 6/20/22.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit

final class RepoListWireframe: BaseWireframe<RepoListViewController> {

    // MARK: - Module setup -

    init() {
        let moduleViewController = RepoListViewController()
        super.init(viewController: moduleViewController)

        let interactor = RepoListInteractor()
        let presenter = RepoListPresenter(view: moduleViewController, interactor: interactor, wireframe: self)
        moduleViewController.presenter = presenter
    }

}

// MARK: - Extensions -

extension RepoListWireframe: RepoListWireframeInterface {
}
