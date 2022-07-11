//
//  ListTableViewCell.swift
//  karrotmarket
//
//  Created by 김정연 on 2022/07/04.
//

import UIKit

class ListTableViewCell: UITableViewCell {

    
    @IBOutlet weak var cellImage: UIImageView!
    @IBOutlet weak var cellTitle: UILabel!
    @IBOutlet weak var cellLocation: UILabel!
    @IBOutlet weak var cellUpload: UILabel!
    @IBOutlet weak var cellPrice: UILabel!
    @IBOutlet weak var cellDot: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        cellImage.layer.cornerRadius = 10
        
        //cellLocation 글자수 크기 자동화
        if cellLocation.adjustsFontSizeToFitWidth == false {
            cellLocation.adjustsFontSizeToFitWidth = true
        }
        //이건 딱히 의미가 없었음
        if cellDot.adjustsFontSizeToFitWidth == false {
            cellDot.adjustsFontSizeToFitWidth = true
        }
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
