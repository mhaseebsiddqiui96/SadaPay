//
//  RepositoryItemCell.swift
//  SadaPayDemo
//
//  Created by Muhammad Haseeb Siddiqui on 6/20/22.
//

import UIKit
import SDWebImage // ideally this should be placed inside some wrapper

class RepositoryItemCell: UITableViewCell {

    @IBOutlet weak var startCountLabel: UILabel!
    @IBOutlet weak var lanLabel: UILabel!
    @IBOutlet weak var repoDescLabel: UILabel!
    @IBOutlet weak var repoNameLabel: UILabel!
    @IBOutlet weak var ownerNameLabel: UILabel!
    @IBOutlet weak var avatarImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup(_ viewModel: RepoListItemViewModel) {
        avatarImageView.sd_setImage(with: URL(string: viewModel.avtar))
        lanLabel.text = viewModel.language
        startCountLabel.text = "\(viewModel.starsCount)"
        repoDescLabel.text = viewModel.repoDescription
        repoNameLabel.text = viewModel.repoName
        ownerNameLabel.text = viewModel.userName
        
    }
    
}
