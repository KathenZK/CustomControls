//
//  MyView.swift
//  CustomControls
//
//  Created by medicool on 15/3/26.
//  Copyright (c) 2015年 ZK. All rights reserved.
//

import UIKit

@IBDesignable class MyView: UIView {

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    @IBInspectable var str:String = "Hello"{
        didSet{
            var lable = UILabel(frame: frame)
            lable.text = str
            lable.textAlignment = NSTextAlignment.Center
            self .addSubview(lable)
        }
    }
    
    @IBInspectable var borderWidth:CGFloat = 0{
        didSet{
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor:UIColor = UIColor.clearColor(){
        didSet{
            layer.borderColor = borderColor.CGColor
        }
    }
    
    @IBInspectable var cornerRadius:CGFloat = 0{
        didSet{
            layer.cornerRadius = cornerRadius
        }
    }
}
