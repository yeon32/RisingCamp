//
//  ItemListViewController.swift
//  karrotmarket
//
//  Created by 김정연 on 2022/07/03.
//

import UIKit

class ItemListViewController : UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var listTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        listTableView.delegate = self
        listTableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Item.dummyItemList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as!
            ItemListTableViewCell
        let target = Item.dummyItemList[indexPath.row]
        
        cell.cellTitle.text = target.cellTitle
        cell.cellLocation.text = target.cellLocation
        cell.cellUpload.text = target.cellUpload
        cell.cellPrice.text = target.cellPrice
        
        return cell
    }
  
}


