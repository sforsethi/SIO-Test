//
//  ListCell.swift
//  SIOTestApp
//
//  Created by Raghav Sethi on 28/09/20.
//

import UIKit

class ListCell: UICollectionViewCell {
    
    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var experience: UILabel!
    @IBOutlet weak var occupation: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.bgView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        self.bgView.layer.cornerRadius = 10
        self.bgView.layer.borderWidth = 1.25
        self.bgView.layer.borderColor = UIColor.black.cgColor
    }
}
