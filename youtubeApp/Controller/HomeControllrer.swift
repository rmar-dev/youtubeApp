//
//  ViewController.swift
//  youtubeApp
//
//  Created by Ricardo Rabeto on 17/02/2018.
//  Copyright © 2018 Ricardo Rabeto. All rights reserved.
//

import UIKit

class HomeController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.isTranslucent = false
        
        
        let titleLabel: UILabel = {
            let label = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width - 32, height: view.frame.height))
            label.text = "Home"
            label.font = UIFont.boldSystemFont(ofSize: 20)
            label.textColor = .white
            return label
        }()
        
        navigationItem.titleView = titleLabel
        
        collectionView?.backgroundColor = .white
        
        collectionView?.register(VideoCell.self, forCellWithReuseIdentifier: "cellid")
        
        collectionView?.contentInset = UIEdgeInsetsMake(50, 0, 0, 0)
        
        setupMenuBar()
    }
    
    let menuBar: MenuBar = {
        let mb = MenuBar()
        return mb
    }()

    private func setupMenuBar(){
        view.addSubview(menuBar)
        menuBar.addAnchorsToView(top: collectionView?.topAnchor, paddingTop: 0, right: view.rightAnchor, paddingRight: 0, bottom: nil, paddingBottom: nil, left: view.leftAnchor, paddingLeft: 0, width: nil, height: 44)
        
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellid", for: indexPath)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let height = (view.frame.width - 32) * 9 / 16
        return CGSize(width: view.frame.width, height: height + 84)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}

