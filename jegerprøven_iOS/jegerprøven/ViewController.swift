//
//  ViewController.swift
//  jegerprøven
//
//  Created by Matias Gjestvang Greaker on 13.10.2016.
//  Copyright © 2016 Greaker. All rights reserved.
//

import UIKit
import QuartzCore

class ViewController: UIViewController {
    
    var button: UIButton?

    @IBOutlet var questionChoice: [UIButton] = []
    @IBOutlet weak var tips: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addBackground("backgroundSnow1")
        
        /*tips.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        tips.backgroundColor = UIColor(red: 0, green: 0.478431, blue: 1, alpha: 0.7)
        tips.text = "Få 40 riktige på 50 spørsmål og 16 riktige på 20 spørsmål for å bestå."
        tips.layer.cornerRadius = 5*/
        for choices in questionChoice{
            choices.layer.cornerRadius = 5
            choices.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.7)
        }
        
        if (DeviceType.IS_IPHONE_6P){
            let attributes = [
                NSForegroundColorAttributeName: UIColor(red: 0, green: 0.478431, blue: 1, alpha: 1),
                NSFontAttributeName: UIFont(name: "Helvetica Neue", size: 20)!
            ]
            UIBarButtonItem.appearance().setTitleTextAttributes(attributes, for: UIControlState())
            
            self.navigationController!.navigationBar.titleTextAttributes = attributes

            
        }
        else{
        
        
            let attributes = [
            NSForegroundColorAttributeName: UIColor(red: 0, green: 0.478431, blue: 1, alpha: 1),
            NSFontAttributeName: UIFont(name: "Helvetica Neue", size: 17)!
            ]
            UIBarButtonItem.appearance().setTitleTextAttributes(attributes, for: UIControlState())

            self.navigationController!.navigationBar.titleTextAttributes = attributes
            
        }
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func anyButtonPressed(_ sender: UIButton) {
        button = sender
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondVC: ViewControllerQuestions = segue.destination as! ViewControllerQuestions
        secondVC.received = button!.currentTitle
    }
    


}

