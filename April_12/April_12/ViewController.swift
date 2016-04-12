//
//  ViewController.swift
//  April_12
//
//  Created by HuangGuoQing on 16/4/12.
//  Copyright © 2016年 HJL. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var myLabel:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor .cyanColor();
        
        myLabel = UILabel();
        
        myLabel.text = "这是一个label";
        myLabel.frame = CGRectMake(30, 100, 200, 30);
        self.view .addSubview(myLabel);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

