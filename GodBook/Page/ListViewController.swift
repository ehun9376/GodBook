//
//  ListViewController.swift
//  BlackSreenVideo
//
//  Created by yihuang on 2022/11/23.
//

import Foundation
import UIKit
import StoreKit

class ListViewController: BaseTableViewController {
    
    var rowModels: [CellRowModel] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        self.regisCellID(cellIDs: [
            "SettingCell",
            "TagCell"
        ])

        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.setupRowModel()
    }
    
    func setupRowModel() {
        
       
        
        self.rowModels.removeAll()

        for type in IAPCenter.shared.types {
            let rowModel = SettingCellRowModel(title: type.soundName,
                                             detail: "",
                                             imageName: nil,
                                             systemImageName: nil,
                                             imageTintColor: nil,
                                             showSwitch: false,
                                             switchON: false,
                                             switchAction: nil,
                                             cellDidSelect: {  [weak self] _ in
              self?.showAlert(type: type)
              
          })
            self.rowModels.append(rowModel)
        }
        
        self.adapter?.updateTableViewData(rowModels: self.rowModels)
    }
    
    func showAlert(type: ProductID) {
        
        let iapedIDs = UserInfoCenter.shared.loadValue(.iaped) as? [String] ?? []

        guard iapedIDs.contains(type.id) || type == .heart else {
            self.showAlert(title: "要購買才可以用喔",
                           message: "ID:\(type.id)",
                           confirmTitle: "前往購買",
                           cancelTitle: "取消",
                           confirmAction: {
                
                if let product = IAPCenter.shared.products.first(where: {$0.productIdentifier == type.id}) {
                    IAPCenter.shared.buy(product: product)
                }
               
            },
                           cancelAction: nil)
            return
        }
        
        self.pushToContentViewController(type: type)

    }
    
    func pushToContentViewController(type: ProductID) {
     
        let contentVC = ContentViewController()
        
        contentVC.model = type
        
        self.navigationController?.pushViewController(contentVC, animated: true)
        
        
    }
    

    
}
