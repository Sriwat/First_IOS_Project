//
//  FeedTableViewCell.swift
//  MyFirstProject
//
//  Created by std109 on 5/29/17.
//  Copyright © 2017 std109. All rights reserved.
//

import UIKit

class FeedTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var iconImgView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var accessoryLabel: UILabel!
    @IBOutlet weak var techsLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupUI(news:News){
        self.iconImgView.image = news.iconImage
        self.titleLabel.text = news.title
        self.descriptionLabel.text = news.description
        self.accessoryLabel.text = "\(news.author) * \(news.view) views *\(news.createDate)"
        self.techsLabel.text = news.category
    }
    
    
}
