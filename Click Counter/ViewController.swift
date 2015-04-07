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
    @IBOutlet var label:UILabel!
    @IBOutlet var labelIncrement:UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func incrementCount(){
        self.count++
        self.label.text          = "\(self.count)"
        self.label.font = UIFont.boldSystemFontOfSize(20)
        if (count % 2 != 0){
            self.view.backgroundColor = UIColor.blueColor()
            self.label.textColor      = UIColor.whiteColor()
        }else{
            self.view.backgroundColor = UIColor.whiteColor()
            self.label.textColor      = UIColor.blackColor()
        }
    }
    @IBAction func decrementCount(){
        self.count--
        self.label.text          = "\(self.count)"
        self.view.backgroundColor = UIColor.redColor()
        self.label.font = UIFont.boldSystemFontOfSize(40)
        self.label.textColor      = UIColor.whiteColor()
    }

}

