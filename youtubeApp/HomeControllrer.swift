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
        
        navigationItem.title = "Home"
        
        collectionView?.backgroundColor = .white
        
        collectionView?.register(VideoCell.self, forCellWithReuseIdentifier: "cellid")
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

class VideoCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    let thumbnailImageView: UIImageView = {
        let iv = UIImageView()
        iv.image = #imageLiteral(resourceName: "taylor_swift_blank_space")
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        return iv
    }()
    
    let userProfileImageView: UIImageView = {
        let iv = UIImageView()
        iv.image = #imageLiteral(resourceName: "taylor_swift_profile")
        iv.layer.cornerRadius = 22
        iv.layer.masksToBounds = true
        return iv
    }()
    
    let seperatorView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.rgb(red: 230, green: 230, blue: 230)
        return view
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Taylor Swift - Blank Space"
        return label
    }()
    
    let subTitleLabel: UITextView = {
        let textView = UITextView()
        textView.text = "TaylorSwiftVEVO • 1.604.684,607 views • 2 years ago"
        textView.textContainerInset = UIEdgeInsetsMake(0, -4, 0, 0)
        textView.textColor = .lightGray
        return textView
    }()
    
    func setupViews(){
        addSubview(thumbnailImageView)
        addSubview(seperatorView)
        addSubview(userProfileImageView)
        addSubview(titleLabel)
        addSubview(subTitleLabel)
        
        
        addConstraintsWithFormat(format: "H:|-16-[v0]-16-|", view: thumbnailImageView)
        addConstraintsWithFormat(format: "H:|[v0]|", view: seperatorView)
        addConstraintsWithFormat(format: "H:|-16-[v0(44)]", view: userProfileImageView)
        
        addConstraintsWithFormat(format: "V:|-16-[v0]-8-[v1(44)]-16-[v2(1)]|", view: thumbnailImageView, userProfileImageView, seperatorView)
        
         titleLabel.addAnchorsToView(top: thumbnailImageView.bottomAnchor, paddingTop: 8, right: thumbnailImageView.rightAnchor, paddingRight: 0, bottom: nil, paddingBottom: nil, left: userProfileImageView.rightAnchor, paddingLeft: 8, width: nil, height: 20)
        
        subTitleLabel.addAnchorsToView(top: titleLabel.bottomAnchor, paddingTop: 4, right: thumbnailImageView.rightAnchor, paddingRight: 0, bottom: nil, paddingBottom: nil, left: userProfileImageView.rightAnchor, paddingLeft: 8, width: nil, height: 30)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
   
}





