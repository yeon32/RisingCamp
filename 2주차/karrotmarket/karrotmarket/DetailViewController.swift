//
//  DetailViewController.swift
//  karrotmarket
//
//  Created by 김정연 on 2022/07/05.
//

import UIKit

class DetailViewController: UIViewController {
    
    var prepareTitle: String?
    var prepareLocation: String?
    var prepareUpload: String?
    var preparePrice: String?
    
    @IBOutlet weak var detailView: UIView!
    
    @IBOutlet weak var dtitle: UILabel!
    @IBOutlet weak var dlocation: UILabel!
    @IBOutlet weak var dupload: UILabel!
    
    @IBOutlet weak var dprice: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dtitle.text = prepareTitle!
        dlocation.text = prepareLocation!
        dupload.text = prepareUpload!
        dprice.text = preparePrice!
       
    }
}
