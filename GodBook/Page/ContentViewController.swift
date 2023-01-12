//
//  ContentViewController.swift
//  GodBook
//
//  Created by 陳逸煌 on 2023/1/12.
//

import Foundation
import UIKit
import AVFoundation

class ContentViewController: BaseViewController {
    
    var audioplayer: AVAudioPlayer?
    
    let contentTextView = UITextView()
    
    let playButton = UIButton()
    
    let scrollView = UIScrollView()
    
    var model: ProductID = .heart
    
    override func viewDidLoad() {
        self.view.backgroundColor = .white
        self.setupPlayButton()
//        self.setupscrollView()
        self.setupContentTextView()
        self.setAVFoundation(type: model)
        self.setupContentTextView(type: model)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    func setupscrollView() {
        self.scrollView.translatesAutoresizingMaskIntoConstraints = false
        self.scrollView.alwaysBounceHorizontal = true
        self.view.addSubview(self.scrollView)
        NSLayoutConstraint.activate([
            self.scrollView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            self.scrollView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            self.scrollView.topAnchor.constraint(equalTo: self.view.topAnchor),
            self.scrollView.bottomAnchor.constraint(equalTo: self.playButton.topAnchor, constant: 10),
        ])
    }
    
    func setupContentTextView(type: ProductID) {
        self.contentTextView.font = .systemFont(ofSize: 22)
        self.contentTextView.text = type.content
        self.contentTextView.translatesAutoresizingMaskIntoConstraints = false
        self.contentTextView.isEditable = false
        self.contentTextView.isScrollEnabled = true
        
        self.view.addSubview(self.contentTextView)
        NSLayoutConstraint.activate([
            self.contentTextView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            self.contentTextView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            self.contentTextView.topAnchor.constraint(equalTo: self.view.topAnchor),
            self.contentTextView.bottomAnchor.constraint(equalTo: self.playButton.topAnchor)
        ])
        
    }
    
    func setupPlayButton() {
        
        if #available(iOS 15.0, *) {
            self.playButton.configuration = nil
        }
        
        self.playButton.setTitle(nil, for: .normal)
        self.playButton.setImage(UIImage(systemName: "play")?.resizeImage(targetSize: .init(width: 100, height: 100)), for: .normal)
        
        self.playButton.addTarget(self, action: #selector(playButtonAction(_:)), for: .touchUpInside)
        
        
        self.playButton.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(self.playButton)
        
        NSLayoutConstraint.activate([
            self.playButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.playButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            self.playButton.widthAnchor.constraint(equalToConstant: 100),
            self.playButton.heightAnchor.constraint(equalToConstant: 100)

        ])
        
        
    }
    
    @objc func playButtonAction(_ sender: UIButton) {
        self.view.endEditing(true)
        
        
        let iapedIDs = UserInfoCenter.shared.loadValue(.iaped) as? [String] ?? []
        
        guard iapedIDs.contains(model.id) || model == .heart else {
            self.showAlert(title: "要購買才可以用喔",
                           message: "目前尚未開放購買解鎖\n\(model.soundName)\nID:\(model.id)",
                           confirmTitle: "前往購買",
                           cancelTitle: "取消",
                           confirmAction: {
                
                if let product = IAPCenter.shared.products.first(where: {$0.productIdentifier == self.model.id}) {
                    IAPCenter.shared.buy(product: product)
                }
               
            },
                           cancelAction: nil)
            return
        }
        
        if let audioplayer = self.audioplayer {
            if audioplayer.isPlaying {
                audioplayer.currentTime = 0
                audioplayer.play()
            } else {
                audioplayer.play()
            }
            
        }
    }
    
    func setupContentTextView() {
        
        self.view.addSubview(self.contentTextView)
        
        NSLayoutConstraint.activate([
            self.contentTextView.topAnchor.constraint(equalTo: self.view.topAnchor)
        ])
        
    }
    
    
    func setAVFoundation(type: ProductID) {
        if let url = Bundle.main.url(forResource: type.soundName,
                                     withExtension: "mp3") {
            self.audioplayer = try? AVAudioPlayer(contentsOf: url)
        }
       
    }

    
}
