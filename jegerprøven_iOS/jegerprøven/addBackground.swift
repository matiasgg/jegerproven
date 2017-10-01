//
//  addBackground.swift
//  jegerprøven
//
//  Created by Matias Gjestvang Greaker on 13.10.2016.
//  Copyright © 2016 Greaker. All rights reserved.
//


import Foundation
import UIKit

extension UIView {
    func addBackground(_ imgName: String) {
        // screen width and height:
        let width = UIScreen.main.bounds.size.width
        let height = UIScreen.main.bounds.size.height
        
        let imageViewBackground = UIImageView(frame: CGRect(x: 0, y: 0, width: width, height: height))
        imageViewBackground.image = UIImage(named: imgName)
        
        // you can change the content mode:
        imageViewBackground.contentMode = UIViewContentMode.scaleAspectFill
        
        self.addSubview(imageViewBackground)
        self.sendSubview(toBack: imageViewBackground)
    }
}
