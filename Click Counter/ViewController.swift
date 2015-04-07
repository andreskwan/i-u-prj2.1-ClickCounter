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
    var labelIncrement:UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func incrementCount(){
        self.count++
        self.label.text          = "\(self.count)"
//        self.labelIncrement.text = "\(self.count)"
        if (count % 2 != 0){
            self.view.backgroundColor = UIColor.blueColor()
            self.label.textColor      = UIColor.whiteColor()
        }else{
            self.view.backgroundColor = UIColor.whiteColor()
            self.label.textColor      = UIColor.blackColor()
        }
    }
    func decrementCount(){
        self.count--
        self.label.text          = "\(self.count)"
        self.labelIncrement.text = "\(self.count)"
    }

}

