//
//  ViewController.swift
//  CustomControls
//
//  Created by medicool on 15/3/26.
//  Copyright (c) 2015年 ZK. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var pc:ProgressControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pc = ProgressControl(frame: CGRectMake(100, 100, 100, 100))
        
        view.addSubview(pc)
        
        //添加手势到自定义的视图上
        var tap = UITapGestureRecognizer(target: self, action: "pcTaped")
        pc.addGestureRecognizer(tap)
        
        var button = UIButton(frame: CGRectMake(130, 250, 50, 30))
        button.backgroundColor = UIColor.blueColor()
        button.setTitle("增加", forState: UIControlState.Normal)
        button.addTarget(self, action: "buttonClicked", forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(button)
    }
    
    func buttonClicked() {
        println("buttonClicked")
        pc.setProgressValue(pc.getProgressValue()+0.2)
    }

    func pcTaped(){
        println("pcTaped")
        pc.setProgressValue(pc.getProgressValue() - 0.2)

    }
}

