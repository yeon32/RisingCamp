//
//  AddViewController.swift
//  3주차_할일목록
//
//  Created by 김정연 on 2022/06/28.
//

import UIKit

class AddViewController: UIViewController {

    
    @IBOutlet weak var todoAddItem: UITextField!
    @IBOutlet weak var todoAddBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //새 목록 추가하기
    @IBAction func todoAddBtnTapped(_ sender: UIButton) {
        items.append(todoAddItem.text!)
                itemsImageFile.append("check.png")
                todoAddItem.text = ""
                _ = navigationController?.popViewController(animated: true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
