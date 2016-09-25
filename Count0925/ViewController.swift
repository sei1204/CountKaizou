//
//  ViewController.swift
//  Count0925
//
//  Created by 三城聖 on 2016/09/25.
//  Copyright © 2016年 三城聖. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var num: Int = 0
    @IBOutlet var label:UILabel!
    @IBOutlet var checkLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func plus() {
         num = num + 1
        label.text = String(num)
        
        if num >= 10 {
            label.textColor = UIColor.redColor()
        }else if num <= -10 {
            label.textColor = UIColor.blueColor()
        }else{
            label.textColor = UIColor.yellowColor()
        }
        
       checkLabel.text = hantei(num)
    }
    
    @IBAction func minus() {
        num = num - 1
        label.text = String(num)
        
        if num >= 10 {
            label.textColor = UIColor.redColor()
        }else if num <= -10 {
            label.textColor = UIColor.blueColor()
        }else{
            label.textColor = UIColor.yellowColor()
        }
        
        checkLabel.text = hantei(num)
    }
    
    func hantei(x:Int) -> String {
        if x > 0 {
            return "プラス"
        }else if x < 0 {
            return "マイナス"
        }else {
            return "ゼロ"
        }
    }
    
    
    

}

