//
//  DetailViewController.swift
//  3주차_할일목록
//
//  Created by 김정연 on 2022/06/28.
//

import UIKit

class DetailViewController: UIViewController {
 
    var receiveItem = ""

    @IBOutlet weak var todoLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        todoLabel.text = receiveItem
    }
    
    // Main View에서 변수를 받아오기 위한 함수
      func receiveItem(_ item: String){
          receiveItem = item
      }
    
}



    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


