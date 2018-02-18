//
//  extensions.swift
//  youtubeApp
//
//  Created by Ricardo Rabeto on 17/02/2018.
//  Copyright © 2018 Ricardo Rabeto. All rights reserved.
//

import UIKit

extension UIColor {
    static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
    }
}
extension UIView {
    func addConstraintsWithFormat(format: String, view: UIView...) {
        var viewsDictionary = [String: UIView]()
        for (index, view) in view.enumerated() {
            let key = "v\(index)"
            view.translatesAutoresizingMaskIntoConstraints = false
            viewsDictionary[key] = view
        }
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat:format, options: NSLayoutFormatOptions(), metrics: nil, views: viewsDictionary))
    }
    
    func addAnchorsToView(top: NSLayoutYAxisAnchor?, paddingTop: CGFloat?, right: NSLayoutXAxisAnchor?, paddingRight: CGFloat?, bottom: NSLayoutYAxisAnchor?, paddingBottom: CGFloat?, left: NSLayoutXAxisAnchor?, paddingLeft: CGFloat?, width: CGFloat?, height: CGFloat?){
        
        self.translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            if let paddingTop = paddingTop {
                self.topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true
            }else{
                self.topAnchor.constraint(equalTo: top).isActive = true
            }
            
        }
        if let right = right {
            if let paddingRight = paddingRight {
                self.rightAnchor.constraint(equalTo: right, constant: paddingRight).isActive = true
            }else{
                self.rightAnchor.constraint(equalTo: right).isActive = true
            }
            
        }
        if let bottom = bottom {
            if let paddingBottom = paddingBottom {
                self.bottomAnchor.constraint(equalTo: bottom, constant: paddingBottom).isActive = true
            }else{
                self.bottomAnchor.constraint(equalTo: bottom).isActive = true
            }
            
        }
        if let left = left {
            if let paddingLeft = paddingLeft {
                self.leftAnchor.constraint(equalTo: left, constant: paddingLeft).isActive = true
            }else{
                self.leftAnchor.constraint(equalTo: left).isActive = true
            }
            
        }
        
        if let width = width {
            self.widthAnchor.constraint(equalToConstant: width).isActive = true
        }
        if let height = height {
            self.heightAnchor.constraint(equalToConstant: height).isActive = true
        }
        
    }
}




