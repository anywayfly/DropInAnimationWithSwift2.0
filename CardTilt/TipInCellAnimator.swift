//
//  TipInCellAnimator.swift
//  CardTilt
//
//  Created by 孟兴东 on 15/11/20.
//  Copyright © 2015年 RayWenderlich.com. All rights reserved.
//

import UIKit

class TipInCellAnimator {
    class func animate(cell: UITableViewCell) {
        let view = cell.contentView
        view.layer.opacity = 0.1
        
        UIView.animateWithDuration(1.4){
            view.layer.opacity = 1
        }
    }
    
    
    let TipCellTransform: CATransform3D = {
    
        let rorationDegrees: CGFloat = -15.0
        let rorationRadians: CGFloat = rorationDegrees * (CGFloat(M_PI) / 180.0)
        let offset = CGPointMake(-20, -20)
        var startform = CATransform3DIdentity
        startform = CATransform3DRotate(CATransform3DIdentity, rorationRadians, 0.0, 0.0, 1.0)
        startform = CATransform3DTranslate(startform, offset.x, offset.y, 0)
    
        return startform
    }()
    
    
    
    class func animateTwo(cell: UITableViewCell) {
        let view = cell.contentView
        let rorationDegrees: CGFloat = -15.0
        let rotationRadians: CGFloat = rorationDegrees * (CGFloat(M_PI) / 180.0)
        let offset = CGPointMake(-20, -20)
        var startTransform = CATransform3DIdentity
        startTransform = CATransform3DRotate(CATransform3DIdentity, rotationRadians, 0.0, 0.0, 1.0)
        startTransform = CATransform3DTranslate(startTransform, offset.x, offset.y, 0.0)
        
        view.layer.transform = startTransform
        view.layer.opacity = 0.8
        
        UIView.animateWithDuration(0.4) {
            view.layer.transform = CATransform3DIdentity
            view.layer.opacity = 1
        }
    }
}