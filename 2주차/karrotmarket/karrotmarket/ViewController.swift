//
//  ViewController.swift
//  karrotmarket
//
//  Created by 김정연 on 2022/07/03.
//

import UIKit



class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
    @IBOutlet weak var listTableView: UITableView!
    
    let imges = ["나이키", "러쉬", "아이폰","로지텍","마스카라","빈폴카라티","목걸이"]
    let labeltitle = ["나이키 데이브레이크 240", "러쉬 배쓰밤", "아이폰 XS", "로지텍", "마스카라", "빈폴 카라티", "목걸이"]
    let labellocation = ["돈암동", "성북동", "면목동", "안암동", "하월곡동", "안암동", "돈암동"]
    let labelupload = ["3분 전", "5분 전", "5분 전", "7분 전", "9분 전", "9분 전", "10분 전"]
    let labelprice = ["60,000원", "20,000원", "300,000원", "60,000원", "5,000원", "30,000원", "20,000원"]
    
    
    
    // 플로팅 버튼
        private let floatingButton: UIButton = {
            let button = UIButton(frame: CGRect(x: 0, y: 0, width: 60, height: 60))
            
            button.backgroundColor = .systemOrange
            
            // 아이콘 추가
            let image = UIImage(systemName: "plus", withConfiguration: UIImage.SymbolConfiguration(pointSize: 32, weight: .medium))
            button.setImage(image, for: .normal)    //선택되지도 하이라이트되지도 않은 상태
            button.tintColor = .white
            button.setTitleColor(.white, for: .normal)
            
            // 쉐도우 추가
            button.layer.shadowRadius = 10
            button.layer.shadowOpacity = 0.3
            
            // Corner radius
            // button.layer.masksToBounds = true    //이렇게 되면 쉐도우가 보이지 않는다
            button.layer.cornerRadius = 30
            return button
        }()
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        listTableView.delegate = self
        listTableView.dataSource = self
        
        //플로팅 버튼
        view.addSubview(floatingButton)
        floatingButton.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        
    }
    
    // 뷰가 노출될 때마다 리스트의 데이터를 다시 불러옴
    override func viewWillAppear(_ animated: Bool) {
            listTableView.reloadData()
        }
    
    override func viewDidLayoutSubviews() {
            super.viewDidLayoutSubviews()
            floatingButton.frame = CGRect(x: view.frame.size.width-60-8, y: view.frame.size.height-60-80, width: 60, height: 60)
        }
    
    //데이터 전달
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailSegue"{
                    if let destination = segue.destination as?
                        DetailViewController {
                        if let selectdeIndex =
                            self.listTableView.indexPathForSelectedRow?.row {
                                destination.prepareTitle = labeltitle[selectdeIndex]
                                destination.prepareLocation = labellocation[selectdeIndex]
                                destination.prepareUpload = labelupload[selectdeIndex]
                                destination.preparePrice = labelprice[selectdeIndex]
                        }
                    }
                }
            }
    
    //플로팅버튼 alert
    @objc private func didTapButton() {
           let alert = UIAlertController(title: "Add Something", message: "Floating button tapped", preferredStyle: .alert)
           alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: nil))
           present(alert, animated: true)
       }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imges.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = listTableView.dequeueReusableCell(withIdentifier: "ListTableViewCell", for:indexPath) as? ListTableViewCell else { return UITableViewCell()}
        
        cell.cellImage.image = UIImage(named: imges[indexPath.row])
        cell.cellTitle.text = labeltitle[indexPath.row]
        cell.cellLocation.text = labellocation[indexPath.row]
        cell.cellUpload.text = labelupload[indexPath.row]
        cell.cellPrice.text = labelprice[indexPath.row]

        return cell
    }
    
    
   
    
    
}




