//
//  QuestionViewiPhone6Plus.swift
//  jegerprøven
//
//  Created by Matias Gjestvang Greaker on 24.10.2016.
//  Copyright © 2016 Greaker. All rights reserved.
//

import UIKit

@IBDesignable class QuestionViewiPhone6Plus: UIView {
    
    //Variables
    @IBOutlet weak var QuestionImage: UIImageView!
    @IBOutlet weak var QuestionText: UILabel!
    @IBOutlet weak var AnswerOption1: UIButton!
    @IBOutlet weak var AnswerOption2: UIButton!
    @IBOutlet weak var AnswerOption3: UIButton!
    @IBOutlet weak var SjekkButton: UIButton!
    @IBOutlet weak var RightOrWrong: UILabel!
    
    var imgView: UIImageView!
    var spm: Questions!
    var rightAnswer: UIButton!
    var rightAnswers: Int = 0
    
    
    
    @IBAction func SjekkButton(_ sender: AnyObject) {
        if (SjekkButton.titleLabel?.text == "Sjekk"){
            
            AnswerOption1.isEnabled = false
            AnswerOption2.isEnabled = false
            AnswerOption3.isEnabled = false
            
            let selectedButton = radioButtonController?.selectedButton()
            if (spm.hasImage()){QuestionImage.alpha = 0.3}
            
            if selectedButton == rightAnswer{
                RightOrWrong.text = "Riktig!"
                rightAnswers += 1
            }
            else{
                RightOrWrong.text = "Feil!"
            }
            SjekkButton.setTitle("Neste", for: UIControlState())
            rightAnswer?.backgroundColor = UIColor(red: 0.298, green: 0.851, blue: 0.392, alpha: 0.7)
            rightAnswer?.setTitleColor(UIColor(red: 1, green: 1, blue: 1, alpha: 1)
                , for: UIControlState())
            
        }
            
        else if( SjekkButton.titleLabel?.text == "Neste" && spm.askedQues()+1 == spm.numberQuestions){
            AnswerOption1.isEnabled = false
            AnswerOption2.isEnabled = false
            AnswerOption3.isEnabled = false
            AnswerOption1.alpha = 0
            AnswerOption2.alpha = 0
            AnswerOption3.alpha = 0
            QuestionImage.alpha = 0
            QuestionText.textAlignment = .center
            RightOrWrong.font = RightOrWrong.font.withSize(25)
            SjekkButton.setTitle("Avslutt", for: UIControlState())
            if (rightAnswers >= Int(Float(spm.numberQuestions)*0.8)){
                RightOrWrong.text = "Gratulerer du bestod!"
                QuestionText.text = "Du fikk \(rightAnswers) av \(spm.numberQuestions) spørsmål riktig."
            }
            else {
                RightOrWrong.text = "Du bestod dessverre ikke!"
                QuestionText.text = "Du fikk \(rightAnswers) av \(spm.numberQuestions) spørsmål riktig."
            }
        }
            
        else if (SjekkButton.titleLabel?.text != "Avslutt"){
            AnswerOption1.isEnabled = true
            AnswerOption2.isEnabled = true
            AnswerOption3.isEnabled = true
            radioButtonController?.selectedButton()!.setTitleColor(UIColor(red: 0, green: 0.478431, blue: 1, alpha: 1)
                , for: UIControlState())
            radioButtonController?.selectedButton()!.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.7)
            rightAnswer!.setTitleColor(UIColor(red: 0, green: 0.478431, blue: 1, alpha: 1)
                , for: UIControlState())
            rightAnswer!.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.7)
            
            
            if (spm.hasImage()){
                removeImage()
            }
            
            spm.nextQuestion()
            addQuestion()
            RightOrWrong?.text = ""
            SjekkButton.setTitle("Sjekk", for: UIControlState())
            SjekkButton.isEnabled = false
            SjekkButton.alpha = 0.7
        }
        
    }
    
    @IBAction func OptionsPressed(_ sender: AnyObject) {
        SjekkButton.isEnabled = true
        SjekkButton.alpha = 1
    }
    
    
    
    var radioButtonController: SSRadioButtonsController!
    
    
    var view: UIView!
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    func setup() {
        view = loadViewFromNib()
        view.frame = bounds
        view.autoresizingMask = UIViewAutoresizing.flexibleWidth
        view.autoresizingMask = UIViewAutoresizing.flexibleHeight
        view.addBackground("backgroundSnow2")
        
        
        
        //Buttons
        SjekkButton.isEnabled = false
        SjekkButton.alpha = 0.7
        
        
        radioButtonController = SSRadioButtonsController(buttons: AnswerOption1, AnswerOption2, AnswerOption3)
        AnswerOption1.layer.cornerRadius = 5
        AnswerOption2.layer.cornerRadius = 5
        AnswerOption3.layer.cornerRadius = 5
        AnswerOption1.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.7)
        AnswerOption2.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.7)
        AnswerOption3.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.7)
        AnswerOption1.titleLabel!.lineBreakMode = NSLineBreakMode.byWordWrapping
        AnswerOption2.titleLabel!.lineBreakMode = NSLineBreakMode.byWordWrapping
        AnswerOption3.titleLabel!.lineBreakMode = NSLineBreakMode.byWordWrapping
        QuestionText.lineBreakMode = NSLineBreakMode.byWordWrapping
        
        addSubview(view)
    }
    
    
    func setUpQuestions(_ numQuestions: Int, isArtQuestion: Bool){
        spm = Questions(numberQuestions: numQuestions, isArtQuestions: isArtQuestion)
        addQuestion()
    }
    
    func addQuestion(){
        
        var optArray = [AnswerOption1, AnswerOption2, AnswerOption3]
        optArray.shuffle()
        
        QuestionText.text = spm?.getQuestion()
        optArray[0]?.setTitle(spm?.getWrongAnswer1(), for: UIControlState())
        optArray[1]?.setTitle(spm?.getWrongAnswer2(), for: UIControlState())
        optArray[2]?.setTitle(spm?.getAnswer(), for: UIControlState())
        rightAnswer = optArray[2]
        
        //Putting in image
        if (spm!.hasImage()){
            addImage()
        }
    }
    
    func addImage(){
        QuestionImage.alpha = 1
        imgView = spm!.getImage()
        imgView.translatesAutoresizingMaskIntoConstraints = false
        self.QuestionImage.addSubview(imgView)
        
        var initialConstrainst = [NSLayoutConstraint]()
        let horizontalConstraint = imgView.centerXAnchor.constraint(equalTo: QuestionImage.centerXAnchor)
        let verticalConstraint = imgView.topAnchor.constraint(equalTo: QuestionImage.topAnchor)
        initialConstrainst.append(contentsOf: [horizontalConstraint,verticalConstraint])
        NSLayoutConstraint.activate(initialConstrainst)
    }
    
    func removeImage(){
        QuestionImage.alpha = 0
        imgView.removeFromSuperview()
    }
    
    
    
    func loadViewFromNib() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: "QuestionViewiPhone6Plus", bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        
        return view
    }
    
    
    
}
