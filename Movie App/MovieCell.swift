//
//  MovieCell.swift
//  Movie App
//
//  Created by user211074 on 1/21/22.
//


import UIKit

 
class MovieCell: UITableViewCell {
    
    
    
    @IBOutlet weak var posterView: UIImageView!
    
    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    
    @IBOutlet weak var summaryLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
