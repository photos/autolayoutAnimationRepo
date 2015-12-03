//
//  ViewController.swift
//  autolayoutAnimation
//
//  Created by Forrest Collins on 12/3/15.
//  Copyright © 2015 Forrest Collins. All rights reserved.
//

// What you need to do:
// Add the autolayout constraint "vertical spacing to top layout guide" to the button.
// Also center the button horizontally and constrain its width and height.


// RUN ON iPHONE 6!


import UIKit

class ViewController: UIViewController {

    // Manually add an @IBOutlet for a NSLayoutConstraint
    // To connect this outlet to your autolayout constraint,
    // tap your autolayout constraint that you want to add a
    // NSLayoutConstraint to and drag a referencing outlet to
    // the yellow ViewController circle and choose the
    // "buttonHeightConstraint" option. Check the length constant of
    // the autolayout constraint you added a NSLayoutConstraint
    // to by showing the attribute inspector or size inspector for
    // that particular autolayout constraint. My length constant
    // is 269.
    
    @IBOutlet var buttonHeightConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var tapMeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    //-----------------------------
    // MARK: - Tap Me Button Tapped
    //-----------------------------
    @IBAction func tapMeButtonTapped(sender: AnyObject) {
        
        UIView.animateWithDuration(1.5, delay: 0, options: UIViewAnimationOptions.CurveEaseOut, animations: {
            
            // animate the constraint from 269 to 120
            self.buttonHeightConstraint.constant = 120
            
            // need to layout the subviews immediately for the
            // NSLayoutConstraint to animate/move.
            self.view.layoutIfNeeded()
            
            }, completion: {
                
                finished in
                
                // animate back to normal position if you want to
                // you can leave this completion block "nil" if you
                // don't want to do following:
                UIView.animateWithDuration(1.5, delay: 0, options: UIViewAnimationOptions.CurveEaseOut, animations: {
                    
                    // animate the constraint back from 120 to 269
                    self.buttonHeightConstraint.constant = 269
                    
                    // need to layout the subviews immediately for the
                    // NSLayoutConstraint to animate/move.
                    self.view.layoutIfNeeded()
                
                }, completion:  nil)
        })
    
    }
}

