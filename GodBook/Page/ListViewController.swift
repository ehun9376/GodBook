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
        
        ///心經
//        case heart

        let heartRowModel = SettingCellRowModel(title: ProductID.heart.soundName,
                                           detail: "",
                                           imageName: nil,
                                           systemImageName: nil,
                                           imageTintColor: nil,
                                           showSwitch: false,
                                           switchON: false,
                                           switchAction: nil,
                                           cellDidSelect: {  [weak self] _ in
            self?.showAlert(type: .heart)
            
        })
        
        self.rowModels.append(heartRowModel)
        
        //        ///大悲咒
        //        case sad
        let sadRowModel = SettingCellRowModel(title: ProductID.sad.soundName,
                                           detail: "",
                                           imageName: nil,
                                           systemImageName: nil,
                                           imageTintColor: nil,
                                           showSwitch: false,
                                           switchON: false,
                                           switchAction: nil,
                                           cellDidSelect: {  [weak self] _ in
            self?.showAlert(type: .sad)
            
        })
        
        self.rowModels.append(sadRowModel)
        //        ///淨水咒
        //        case water
        let waterRowModel = SettingCellRowModel(title: ProductID.water.soundName,
                                           detail: "",
                                           imageName: nil,
                                           systemImageName: nil,
                                           imageTintColor: nil,
                                           showSwitch: false,
                                           switchON: false,
                                           switchAction: nil,
                                           cellDidSelect: {  [weak self] _ in
            self?.showAlert(type: .water)
            
        })
        self.rowModels.append(waterRowModel)
        //        ///往生淨土神咒
        //        case dead
        let deadRowModel = SettingCellRowModel(title: ProductID.dead.soundName,
                                           detail: "",
                                           imageName: nil,
                                           systemImageName: nil,
                                           imageTintColor: nil,
                                           showSwitch: false,
                                           switchON: false,
                                           switchAction: nil,
                                           cellDidSelect: {  [weak self] _ in
            self?.showAlert(type: .dead)
            
        })
        self.rowModels.append(deadRowModel)
        //        ///日光菩薩咒
        //        case sun
        let sunRowModel = SettingCellRowModel(title: ProductID.sun.soundName,
                                           detail: "",
                                           imageName: nil,
                                           systemImageName: nil,
                                           imageTintColor: nil,
                                           showSwitch: false,
                                           switchON: false,
                                           switchAction: nil,
                                           cellDidSelect: {  [weak self] _ in
            self?.showAlert(type: .sun)
            
        })
        self.rowModels.append(sunRowModel)
        //        ///月光菩薩咒
        //        case moon
        let moonRowModel = SettingCellRowModel(title: ProductID.moon.soundName,
                                           detail: "",
                                           imageName: nil,
                                           systemImageName: nil,
                                           imageTintColor: nil,
                                           showSwitch: false,
                                           switchON: false,
                                           switchAction: nil,
                                           cellDidSelect: {  [weak self] _ in
            self?.showAlert(type: .moon)
            
        })
        self.rowModels.append(moonRowModel)
        //        ///文殊心咒
        //        case killHeart
        let killHeartRowModel = SettingCellRowModel(title: ProductID.killHeart.soundName,
                                           detail: "",
                                           imageName: nil,
                                           systemImageName: nil,
                                           imageTintColor: nil,
                                           showSwitch: false,
                                           switchON: false,
                                           switchAction: nil,
                                           cellDidSelect: {  [weak self] _ in
            self?.showAlert(type: .killHeart)
            
        })
        self.rowModels.append(killHeartRowModel)
        //        ///楞嚴咒咒心
        //        case yen
        let yenRowModel = SettingCellRowModel(title: ProductID.yen.soundName,
                                           detail: "",
                                           imageName: nil,
                                           systemImageName: nil,
                                           imageTintColor: nil,
                                           showSwitch: false,
                                           switchON: false,
                                           switchAction: nil,
                                           cellDidSelect: {  [weak self] _ in
            self?.showAlert(type: .yen)
            
        })
        self.rowModels.append(yenRowModel)
        //        ///大勢至菩薩心咒
        //        case da4
        let da4RowModel = SettingCellRowModel(title: ProductID.da4.soundName,
                                           detail: "",
                                           imageName: nil,
                                           systemImageName: nil,
                                           imageTintColor: nil,
                                           showSwitch: false,
                                           switchON: false,
                                           switchAction: nil,
                                           cellDidSelect: {  [weak self] _ in
            self?.showAlert(type: .da4)
            
        })
        self.rowModels.append(da4RowModel)
        //        ///準提佛母心咒
        //        case monther
        let montherRowModel = SettingCellRowModel(title: ProductID.monther.soundName,
                                           detail: "",
                                           imageName: nil,
                                           systemImageName: nil,
                                           imageTintColor: nil,
                                           showSwitch: false,
                                           switchON: false,
                                           switchAction: nil,
                                           cellDidSelect: {  [weak self] _ in
            self?.showAlert(type: .monther)
            
        })
        self.rowModels.append(montherRowModel)
        //        /// 滅定業真言
        //        case breakTrue
        let breakTrueRowModel = SettingCellRowModel(title: ProductID.breakTrue.soundName,
                                           detail: "",
                                           imageName: nil,
                                           systemImageName: nil,
                                           imageTintColor: nil,
                                           showSwitch: false,
                                           switchON: false,
                                           switchAction: nil,
                                           cellDidSelect: {  [weak self] _ in
            self?.showAlert(type: .breakTrue)
            
        })
        self.rowModels.append(breakTrueRowModel)
        //        ///綠度母心咒
        //        case fateDoMother
        let fateDoMotherRowModel = SettingCellRowModel(title: ProductID.fateDoMother.soundName,
                                           detail: "",
                                           imageName: nil,
                                           systemImageName: nil,
                                           imageTintColor: nil,
                                           showSwitch: false,
                                           switchON: false,
                                           switchAction: nil,
                                           cellDidSelect: {  [weak self] _ in
            self?.showAlert(type: .fateDoMother)
            
        })
        self.rowModels.append(fateDoMotherRowModel)
        
        
        self.adapter?.updateTableViewData(rowModels: self.rowModels)
    }
    
    func showAlert(type: ProductID) {
        
        
        self.pushToContentViewController(type: type)
        

    }
    
    func pushToContentViewController(type: ProductID) {
     
        let contentVC = ContentViewController()
        
        contentVC.model = type
        
        self.navigationController?.pushViewController(contentVC, animated: true)
        
        
    }
    

    
}
