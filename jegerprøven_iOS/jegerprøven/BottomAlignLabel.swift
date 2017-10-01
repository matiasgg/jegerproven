//
//  BottomAlignLabel.swift
//  jegerprøven
//
//  Created by Matias Gjestvang Greaker on 18.10.2016.
//  Copyright © 2016 Greaker. All rights reserved.
//

import UIKit

@IBDesignable
class BottomAlignedLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func drawTextInRect(rect: CGRect) {
        let height = self.sizeThatFits(rect.size).height
        let y = rect.origin.y + rect.height - height
        super.drawTextInRect(CGRect(x: rect.origin.x, y: y, width: rect.width, height: height))
    }
}


