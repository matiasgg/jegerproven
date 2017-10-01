//
//  Question.swift
//  jegerprøven
//
//  Created by Matias Gjestvang Greaker on 16.10.2016.
//  Copyright © 2016 Greaker. All rights reserved.
//

import Foundation
import UIKit


class Question {
    
    var spm: String
    var answer: String
    var wrongAnswer1: String
    var wrongAnswer2: String
    var image: UIImageView?
    
    init(spm: String, answer: String, wrongAnswer1: String, wrongAnswer2: String){
        self.spm = spm
        self.answer = answer
        self.wrongAnswer1 = wrongAnswer1
        self.wrongAnswer2 = wrongAnswer2
    }
    
    init(spm: String, answer: String, wrongAnswer1: String, wrongAnswer2: String, picture: String ){
        self.spm = spm
        self.answer = answer
        self.wrongAnswer1 = wrongAnswer1
        self.wrongAnswer2 = wrongAnswer2
        self.image = UIImageView(image: UIImage(named: picture)!)
        
    }
    
    func hasImage() -> Bool{
        if (image == nil){
            return false
        }
        else{ return true}
    }
}