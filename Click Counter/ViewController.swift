//
//  ViewController.swift
//  Click Counter
//
//  Created by Andres Kwan on 4/6/15.
//  Copyright (c) 2015 Kwan Castle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    var label:UILabel!
    var labelIncrement:UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Label
        //1 instantiate label
        var label = UILabel()
        //2 create frame for label
        label.frame = CGRectMake(130, 150, 60, 60)
        //3 set label text
        label.text = "0"
        //4 add subview
        self.view.addSubview(label)
        //5 associate attribute to the UILabel
        self.label = label
        
        //Label
        var labelIncrement = UILabel()
        labelIncrement.frame = CGRectMake(260, 150, 60, 60)
        labelIncrement.text = "0"
        self.view.addSubview(labelIncrement)
        self.labelIncrement = labelIncrement
        
        //Button
        var button = UIButton()
        button.frame = CGRectMake(150, 250, 60, 60)
        button.setTitle("Click", forState: .Normal)
        button.setTitleColor(UIColor.blackColor(), forState: .Normal)
        self.view.addSubview(button)
        //add button target action pattern
        button.addTarget(self, action: "incrementCount", forControlEvents: UIControlEvents.TouchUpInside)
        
        //Decrement Button
        var decrementButton = UIButton()
        decrementButton.frame = CGRectMake(150, 320, 60, 60)
        decrementButton.setTitle("Decrement", forState: .Normal)
        decrementButton.setTitleColor(UIColor.blackColor(), forState: .Normal)
        self.view.addSubview(decrementButton)
        //add button target action pattern
        decrementButton.addTarget(self, action: "decrementCount", forControlEvents: UIControlEvents.TouchUpInside)
    }
    func incrementCount(){
        self.count++
        self.label.text          = "\(self.count)"
        self.labelIncrement.text = "\(self.count)"
        if (count % 2 != 0){
            self.view.backgroundColor = UIColor.blueColor()
        }else{
            self.view.backgroundColor = UIColor.whiteColor()
        }
    }
    func decrementCount(){
        self.count--
        self.label.text          = "\(self.count)"
        self.labelIncrement.text = "\(self.count)"
    }

}

