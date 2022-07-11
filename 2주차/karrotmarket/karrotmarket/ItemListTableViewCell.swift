//
//  ItemListTableViewCell.swift
//  karrotmarket
//
//  Created by 김정연 on 2022/07/03.
//

import UIKit

class ItemListTableViewCell: UITableViewCell {

    @IBOutlet weak var cellImage: UIImageView!
    @IBOutlet weak var cellTitle: UILabel!
    @IBOutlet weak var cellLocation: UILabel!
    @IBOutlet weak var cellUpload: UILabel!
    @IBOutlet weak var cellPrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
