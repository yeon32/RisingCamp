//
//  Item.swift
//  karrotmarket
//
//  Created by 김정연 on 2022/07/03.
//

import Foundation

class Item {
    var cellTitle: String
    var cellLocation: String
    var cellUpload: String
    var cellPrice: String
    
    init(cellTitle: String, cellLocation: String, cellUpload: String, cellPrice: String) {
        self.cellTitle = cellTitle
        self.cellLocation = cellLocation
        self.cellUpload = cellUpload
        self.cellPrice = cellPrice
        
    }
    
    static var dummyItemList = [ Item(cellTitle: "나이키 데이브레이크 240", cellLocation: "온천동", cellUpload: "3분 전", cellPrice: "60,000원"),Item(cellTitle: "러쉬 배쓰밤", cellLocation: "온천동", cellUpload: "7분 전", cellPrice: "20,000원") ]
}
