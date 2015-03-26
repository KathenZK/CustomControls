//
//  ProgressControl.swift
//  CustomControls
//
//  Created by medicool on 15/3/26.
//  Copyright (c) 2015年 ZK. All rights reserved.
//

import UIKit

class ProgressControl: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor(white: 1, alpha: 0)
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private var _progressValue:CGFloat = 0
    
    func getProgressValue()->CGFloat{
        return _progressValue
    }
    
    func setProgressValue(value:CGFloat)
    {
        _progressValue = value
        setNeedsDisplay()
    }
    
    override func drawRect(rect: CGRect) {
        
        var ctx = UIGraphicsGetCurrentContext()
        
        var r = rect.width/2
        
        CGContextAddArc(ctx, r, r, r, 0, 3.141592653 * 2, 0)
        
        CGContextSetRGBFillColor(ctx, 0.7, 0.7, 0.7, 1)
        
        CGContextFillPath(ctx)
        
        CGContextAddArc(ctx, r, r, r, 0, 3.141592653 * 2 * _progressValue, 0)
        
        CGContextAddLineToPoint(ctx, r, r)
        
        CGContextSetRGBFillColor(ctx, 0, 0, 1, 1)
        
        CGContextFillPath(ctx)
    }
    

}
