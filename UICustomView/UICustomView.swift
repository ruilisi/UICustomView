//
//  UICustomView.swift
//  UICustomView
//
//  Created by 徐恒一 on 2019/3/12.
//  Copyright © 2019 徐恒一. All rights reserved.
//
import Foundation
import UIKit

open class UICustomView: UIView {
    @IBInspectable open var startColor: UIColor = UIColor(red: 0.94, green: 0.74, blue: 0.13, alpha: 1)
    @IBInspectable open var firstMiddleColor: UIColor = UIColor(red: 0.98, green: 0.22, blue: 0.34, alpha: 1)
    @IBInspectable open var lastMiddleColor: UIColor =  UIColor(red: 0.41, green: 0.09, blue: 0.34, alpha: 1)
    @IBInspectable open var endColor: UIColor = UIColor(red: 0.07, green: 0.03, blue: 0.25, alpha: 1)
    @IBInspectable open var radius: CGFloat = 0.0
    @IBInspectable open var topRightRadius: Bool = true
    @IBInspectable open var bottomRightRadius: Bool = true
    @IBInspectable open var bottomLeftRadius: Bool = true
    @IBInspectable open var topLeftRadius: Bool = true
    
    override open func awakeFromNib() {
        
        let bgLayer = CAGradientLayer()
        bgLayer.colors = [startColor.cgColor, firstMiddleColor.cgColor, lastMiddleColor.cgColor, endColor.cgColor]
        bgLayer.locations = [0, 0.59, 0.8, 1]
        bgLayer.frame = self.bounds
        bgLayer.startPoint = CGPoint(x: 0.5, y: -0.44)
        bgLayer.endPoint = CGPoint(x: 0.59, y: 0.59)
        self.layer.insertSublayer(bgLayer, at: 0)
        
        let radiusView = CAShapeLayer()
        radiusView.frame = CGRect(x: 0, y: 0, width: self.bounds.width, height: self.bounds.height)

        let radii = radius
        var radiiArray = UIRectCorner()
        
        if topRightRadius {
            radiiArray.insert(.topRight)
        }
        if bottomRightRadius {
            radiiArray.insert(.bottomRight)
        }
        if bottomLeftRadius {
            radiiArray.insert(.bottomLeft)
        }
        if topLeftRadius {
            radiiArray.insert(.topLeft)
        }
        
        radiusView.path = UIBezierPath(roundedRect: radiusView.frame, byRoundingCorners: radiiArray, cornerRadii: CGSize(width: radii, height: radii)).cgPath
        self.layer.mask = radiusView
    }
}
