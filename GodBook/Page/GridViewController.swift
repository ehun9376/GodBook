////
////  GridViewController.swift
////  BlackSreenVideo
////
////  Created by yihuang on 2022/11/26.
////
//
//import Foundation
//import UIKit
//
//class AppImageModel: NSObject {
//
//    var image: UIImage?
//
//
//    init(image: UIImage? = nil) {
//        self.image = image
//    }
//
//}
//
//class GridViewController: BaseCollectionViewController {
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        self.regisCell()
//        self.setupItemModel()
//    }
//
//    override func creatLayout() -> UICollectionViewFlowLayout {
//
//        let layout = UICollectionViewFlowLayout()
//        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
//        layout.minimumLineSpacing = 10
//        layout.minimumInteritemSpacing = 0
//        layout.scrollDirection = .vertical
//
//        return layout
//    }
//
//    func setupItemModel() {
//
//        var itemModels: [CollectionItemModel]? = []
//
//        let appModels: [AppImageModel] = [
//
//        ]
//
//
//
//        let width = self.view.frame.width / 3
//
//        for appModel in appModels {
//            let itemModel: ImageCellItemModel = .init(image: nil, itemSize: .init(width: 50, height: 50), cellDidPressed: {_ in })
//
//            itemModels?.append(itemModel)
//        }
//
//        self.adapter?.updateData(itemModels: itemModels ?? [])
//    }
//
//    func regisCell(){
//        self.collectionView.register(.init(nibName: "ImageCell", bundle: nil), forCellWithReuseIdentifier: "ImageCell")
//    }
//
//
//}
