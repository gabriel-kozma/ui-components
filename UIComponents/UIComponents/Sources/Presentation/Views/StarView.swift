/*
 *	StarView.swift
 *	UIComponents
 *
 *	Created by Gabriel Kozma on /4/0516.
 *	Copyright 2016 gabriel-kozma. All rights reserved.
 */

import UIKit

//**********************************************************************************************************
//
// MARK: - Constants -
//
//**********************************************************************************************************

//**********************************************************************************************************
//
// MARK: - Definitions -
//
//**********************************************************************************************************

//**********************************************************************************************************
//
// MARK: - Class -
//
//**********************************************************************************************************

@IBDesignable
public class StarView : UIView {

//**************************************************
// MARK: - Properties
//**************************************************

    @IBInspectable var halfStar: Bool = false
    @IBInspectable var fillColor: UIColor = UIColor.grayColor()
    
//**************************************************
// MARK: - Constructors
//**************************************************

//**************************************************
// MARK: - Private Methods
//**************************************************

    private func drawFullStar(rect: CGRect) {
        let starPath = UIBezierPath()
        starPath.moveToPoint(CGPoint(x: rect.width * 0.5, y: 0))
        starPath.addLineToPoint(CGPoint(x: rect.width * 0.65, y: rect.height * 0.29))
        starPath.addLineToPoint(CGPoint(x: rect.width * 0.97, y: rect.height * 0.38))
        starPath.addLineToPoint(CGPoint(x: rect.width * 0.78, y: rect.height * 0.64))
        starPath.addLineToPoint(CGPoint(x: rect.width * 0.8, y: rect.height))
        starPath.addLineToPoint(CGPoint(x: rect.width * 0.5, y: rect.height * 0.9))
        starPath.addLineToPoint(CGPoint(x: rect.width * 0.2, y: rect.height))
        starPath.addLineToPoint(CGPoint(x: rect.width * 0.22, y: rect.height * 0.64))
        starPath.addLineToPoint(CGPoint(x: rect.width * 0.002, y: rect.height * 0.38))
        starPath.addLineToPoint(CGPoint(x: rect.width * 0.32, y: rect.height * 0.29))
        starPath.closePath()
        fillColor.setFill()
        starPath.fill()
    }
    
    private func drawHalfStar(rect: CGRect) {
        let starPath = UIBezierPath()
        let widthForMath = rect.width/2
        starPath.moveToPoint(CGPoint(x: widthForMath * 0.64, y: rect.height * 0.26))
        
        starPath.addCurveToPoint(CGPoint(x: 0, y: rect.height * 0.36),
                                 controlPoint1: CGPoint(x: widthForMath * 0.64, y: rect.height * 0.27),
                                 controlPoint2: CGPoint(x: widthForMath * 0.07, y: rect.height * 0.35))
        
        starPath.addLineToPoint(CGPoint(x: 0, y: rect.height * 0.37))
        
        starPath.addCurveToPoint(CGPoint(x: widthForMath * 0.40, y: rect.height * 0.64),
                                 controlPoint1: CGPoint(x: widthForMath * 0.06, y: rect.height * 0.41),
                                 controlPoint2: CGPoint(x: widthForMath * 0.40, y: rect.height * 0.64))
        
        starPath.addLineToPoint(CGPoint(x: widthForMath * 0.38, y: rect.height))
        
        starPath.addCurveToPoint(CGPoint(x: widthForMath, y: rect.height * 0.88),
                                 controlPoint1: CGPoint(x: widthForMath * 0.38, y: rect.height),
                                 controlPoint2: CGPoint(x: widthForMath * 0.87, y: rect.height * 0.91))
        
        starPath.addCurveToPoint(CGPoint(x: widthForMath, y: 0),
                                 controlPoint1: CGPoint(x: widthForMath, y: rect.height * 0.64),
                                 controlPoint2: CGPoint(x: widthForMath, y: rect.height * 011))
        
        starPath.addCurveToPoint(CGPoint(x: widthForMath * 0.64, y: rect.height * 0.26),
                                 controlPoint1: CGPoint(x: widthForMath * 0.9, y: rect.height * 0.069),
                                 controlPoint2: CGPoint(x: widthForMath * 0.64, y: rect.height * 0.26))
        
        starPath.addLineToPoint(CGPoint(x: widthForMath * 0.65, y: rect.height * 0.25))
        starPath.closePath()
        fillColor.setFill()
        starPath.fill()
    }
    
//**************************************************
// MARK: - Self Public Methods
//**************************************************

//**************************************************
// MARK: - Override Public Methods
//**************************************************

    public override func drawRect(rect: CGRect) {
        if halfStar {
            self.drawHalfStar(rect)
        } else {
            self.drawFullStar(rect)
        }
    }
}
