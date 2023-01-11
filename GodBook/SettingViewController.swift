//
//  SettingViewController.swift
//  BlackSreenVideo
//
//  Created by yihuang on 2022/11/23.
//

import Foundation
import UIKit
import StoreKit

class SettingViewController: BaseTableViewController {
    
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
 
        
        
        self.adapter?.updateTableViewData(rowModels: self.rowModels)
    }

    
    func pushToSelectVC(title: String,dataSource: [CodeModel], seletedModel: [CodeModel], confirmAction:(([CodeModel])->())?) {
        let vc = SelectViewController()
        vc.navigationtitle = title
        vc.dataSourceModels = dataSource
        vc.selectedModels = seletedModel
        vc.confirmAction = confirmAction
        self.navigationController?.pushViewController(vc, animated: true)
    }
    

    
}
