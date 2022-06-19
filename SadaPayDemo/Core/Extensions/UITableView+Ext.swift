//
//  UITableView+Ext.swift
//  SadaPayDemo
//
//  Created by Muhammad Haseeb Siddiqui on 6/20/22.
//

import UIKit

extension UITableView {
    func registerTableCell(_ cells: [UITableViewCell.Type]) {
        for cell in cells {
            let nib = UINib(nibName: String(describing: cell), bundle: nil)
            register(nib, forCellReuseIdentifier: String(describing: cell))
        }
    }
}
