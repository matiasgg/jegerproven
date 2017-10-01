//
//  RadioButtonsController.swift
//  TestApp
//
//  Created by Al Shamas Tufail on 24/03/2015.
//  Copyright (c) 2015 Al Shamas Tufail. All rights reserved.
//

import Foundation
import UIKit

/// RadioButtonControllerDelegate. Delegate optionally implements didSelectButton that receives selected button.
@objc protocol SSRadioButtonControllerDelegate {
    /**
     This function is called when a button is selected. If 'shouldLetDeSelect' is true, and a button is deselected, this function
     is called with a nil.
     
     */
    @objc optional func didSelectButton(_ aButton: UIButton?)
}

class SSRadioButtonsController : NSObject
{
    fileprivate var buttonsArray = [UIButton]()
    fileprivate weak var currentSelectedButton:UIButton? = nil
    weak var delegate : SSRadioButtonControllerDelegate? = nil
    /**
     Set whether a selected radio button can be deselected or not. Default value is false.
     */
    var shouldLetDeSelect = false
    /**
     Variadic parameter init that accepts UIButtons.
     - parameter buttons: Buttons that should behave as Radio Buttons
     */
    
    
    init(buttons: UIButton...) {
        super.init()
        for aButton in buttons {
            aButton.addTarget(self, action: "pressed:", for: UIControlEvents.touchUpInside)
        }
        self.buttonsArray = buttons
    }
    /**
     Add a UIButton to Controller
     - parameter button: Add the button to controller.
     */
    func addButton(_ aButton: UIButton) {
        buttonsArray.append(aButton)
        aButton.addTarget(self, action: "pressed:", for: UIControlEvents.touchUpInside)
    }
    /**
     Remove a UIButton from controller.
     - parameter button: Button to be removed from controller.
     */
    /*func removeButton(_ aButton: UIButton) {
        var iteration = 0
        var iteratingButton: UIButton? = nil
        for( ; iteration<buttonsArray.count; iteration++) {
            iteratingButton = buttonsArray[iteration]
            if(iteratingButton == aButton) {
                break
            } else {
                iteratingButton = nil
            }
        }
        if(iteratingButton != nil) {
            buttonsArray.remove(at: iteration)
            iteratingButton!.removeTarget(self, action: "pressed:", for: UIControlEvents.touchUpInside)
            if currentSelectedButton == iteratingButton {
                currentSelectedButton = nil
            }
        }
    }*/
    func removeButton(_ aButton: UIButton) {
        var iteration = 0
        var trueOrNot: Bool = false
        var iteratingButton: UIButton? = nil
        for button in buttonsArray {
            iteratingButton = button
            if(iteratingButton == aButton) {
                trueOrNot = true
                break
            }
        }
        if(trueOrNot) {
            buttonsArray.remove(at: iteration)
            iteratingButton!.removeTarget(self, action: "pressed:", for: UIControlEvents.touchUpInside)
            if currentSelectedButton == iteratingButton {
                currentSelectedButton = nil
            }
        }

    iteration += 1
    
    }
    
    /**
     Set an array of UIButons to behave as controller.
     
     - parameter buttonArray: Array of buttons
     */
    func setButtonsArray(_ aButtonsArray: [UIButton]) {
        for aButton in aButtonsArray {
            aButton.addTarget(self, action: "pressed:", for: UIControlEvents.touchUpInside)
        }
        buttonsArray = aButtonsArray
    }
    
    func pressed(_ sender: UIButton) {
        if(sender.isSelected) {
            if shouldLetDeSelect {
                //sender.selected = false
                sender.setTitleColor(UIColor(red: 0, green: 0.478431, blue: 1, alpha: 1)
                    , for: UIControlState())
                sender.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.7)
                currentSelectedButton = nil
            }
        } else {
            for aButton in buttonsArray {
                //aButton.selected = false
                aButton.setTitleColor(UIColor(red: 0, green: 0.478431, blue: 1, alpha: 1)
                    , for: UIControlState())
                aButton.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.7)
            }
            sender.setTitleColor(UIColor(red: 1, green: 1, blue: 1, alpha: 1)
                , for: UIControlState())
            sender.backgroundColor = UIColor(red: 0, green: 0.478431, blue: 1, alpha: 0.7)
            //sender.selected = true
            currentSelectedButton = sender
        }
        delegate?.didSelectButton?(currentSelectedButton)
    }
    /**
     Get the currently selected button.
     
     - returns: Currenlty selected button.
     */
    func selectedButton() -> UIButton? {
        return currentSelectedButton
    }
}
