//
//  ViewControllerQuestions.swift
//  jegerprøven
//
//  Created by Matias Gjestvang Greaker on 13.10.2016.
//  Copyright © 2016 Greaker. All rights reserved.
//

import UIKit

class ViewControllerQuestions: UIViewController {

    var received: String!
    var avslutt: UIButton!
    var numQuestions: Int!
    var totQuestions: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        numQuestions = 1

        self.navigationItem.title = "Spørsmål: \(numQuestions!)"


        
        if (DeviceType.IS_IPHONE_5){
            let myView = QuestionViewiPhone5(frame: CGRect(x: 0, y: 0, width: 320, height: 568))
            avslutt = myView.SjekkButton

            view.addSubview(myView)
            //Set up questions
            if received == "Jegerprøven - 50 Spørsmål"{
                myView.setUpQuestions(numQuestions: 50, isArtQuestion: false)
                totQuestions = 50
            }
            else if received == "Jegerprøven - 20 Spørsmål"{
                myView.setUpQuestions(numQuestions: 20, isArtQuestion: false)
                totQuestions = 20
            }
            else{
                myView.setUpQuestions(numQuestions: 20, isArtQuestion: true)
                totQuestions = 20
            }
        }
        else if(DeviceType.IS_IPHONE_6){
            let myView = QuestionViewiPhone6(frame: CGRect(x: 0, y: 0, width: 375, height: 667))
            avslutt = myView.SjekkButton
          

            view.addSubview(myView)
            //Set up questions
            if received == "Jegerprøven - 50 Spørsmål"{
                myView.setUpQuestions(50, isArtQuestion: false)
                totQuestions = 50
            }
            else if received == "Jegerprøven - 20 Spørsmål"{
                myView.setUpQuestions(20, isArtQuestion: false)
                totQuestions = 20
            }
            else{
                myView.setUpQuestions(20, isArtQuestion: true)
                totQuestions = 20
            }
        }
        else if(DeviceType.IS_IPHONE_6P){
            let myView = QuestionViewiPhone6Plus(frame: CGRect(x: 0, y: 0, width: 414, height: 736))
            avslutt = myView.SjekkButton
            
            
            view.addSubview(myView)
            //Set up questions
            if received == "Jegerprøven - 50 Spørsmål"{
                myView.setUpQuestions(50, isArtQuestion: false)
                totQuestions = 50
            }
            else if received == "Jegerprøven - 20 Spørsmål"{
                myView.setUpQuestions(20, isArtQuestion: false)
                totQuestions = 20
            }
            else{
                myView.setUpQuestions(20, isArtQuestion: true)
                totQuestions = 20
            }
        }
        
        else{
            let myView = QuestionViewiPhone5(frame: CGRect(x: 0, y: 0, width: 320, height: 568))
            avslutt = myView.SjekkButton
            
            view.addSubview(myView)
            //Set up questions
            if received == "Jegerprøven - 50 Spørsmål"{
                myView.setUpQuestions(numQuestions: 50, isArtQuestion: false)
                totQuestions = 50
            }
            else if received == "Jegerprøven - 20 Spørsmål"{
                myView.setUpQuestions(numQuestions: 20, isArtQuestion: false)
                totQuestions = 20
            }
            else{
                myView.setUpQuestions(numQuestions: 20, isArtQuestion: true)
                totQuestions = 20
            }
            
        }
        
        avslutt.addTarget(self, action: #selector(avsluttTapped), for: UIControlEvents.touchUpInside)
        
    }
    
    

    func avsluttTapped(_ sender: UIButton){
        if (avslutt.titleLabel?.text == "Neste"){
            if (numQuestions == totQuestions){
                return
            }
            numQuestions = numQuestions + 1
            self.navigationItem.title = "Spørsmål: \(numQuestions!)"
        }
        else if ( avslutt.titleLabel?.text == "Avslutt"){
            
            let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            
            let navc: UINavigationController = storyboard.instantiateViewController(withIdentifier: "ViewControllerNavigation") as! UINavigationController
            
            self.present(navc, animated: true, completion: nil)
            
        }

    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
