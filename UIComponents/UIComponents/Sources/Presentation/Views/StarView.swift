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
open class StarView : UIView {

//**************************************************
// MARK: - Properties
//**************************************************

    @IBInspectable var halfStar: Bool = false
    @IBInspectable var fillColor: UIColor = UIColor.gray
    
//**************************************************
// MARK: - Constructors
//**************************************************

//**************************************************
// MARK: - Private Methods
//**************************************************

    fileprivate func drawFullStar(_ rect: CGRect) {
        let starPath = UIBezierPath()
        starPath.move(to: CGPoint(x: rect.width * 0.5, y: 0))
        starPath.addLine(to: CGPoint(x: rect.width * 0.65, y: rect.height * 0.29))
        starPath.addLine(to: CGPoint(x: rect.width * 0.97, y: rect.height * 0.38))
        starPath.addLine(to: CGPoint(x: rect.width * 0.78, y: rect.height * 0.64))
        starPath.addLine(to: CGPoint(x: rect.width * 0.8, y: rect.height))
        starPath.addLine(to: CGPoint(x: rect.width * 0.5, y: rect.height * 0.9))
        starPath.addLine(to: CGPoint(x: rect.width * 0.2, y: rect.height))
        starPath.addLine(to: CGPoint(x: rect.width * 0.22, y: rect.height * 0.64))
        starPath.addLine(to: CGPoint(x: rect.width * 0.002, y: rect.height * 0.38))
        starPath.addLine(to: CGPoint(x: rect.width * 0.32, y: rect.height * 0.29))
        starPath.close()
        fillColor.setFill()
        starPath.fill()
    }
    
    fileprivate func drawHalfStar(_ rect: CGRect) {
        let starPath = UIBezierPath()
        let widthForMath = rect.width/2
        starPath.move(to: CGPoint(x: widthForMath * 0.64, y: rect.height * 0.26))
        
        starPath.addCurve(to: CGPoint(x: 0, y: rect.height * 0.36),
                                 controlPoint1: CGPoint(x: widthForMath * 0.64, y: rect.height * 0.27),
                                 controlPoint2: CGPoint(x: widthForMath * 0.07, y: rect.height * 0.35))
        
        starPath.addLine(to: CGPoint(x: 0, y: rect.height * 0.37))
        
        starPath.addCurve(to: CGPoint(x: widthForMath * 0.40, y: rect.height * 0.64),
                                 controlPoint1: CGPoint(x: widthForMath * 0.06, y: rect.height * 0.41),
                                 controlPoint2: CGPoint(x: widthForMath * 0.40, y: rect.height * 0.64))
        
        starPath.addLine(to: CGPoint(x: widthForMath * 0.38, y: rect.height))
        
        starPath.addCurve(to: CGPoint(x: widthForMath, y: rect.height * 0.88),
                                 controlPoint1: CGPoint(x: widthForMath * 0.38, y: rect.height),
                                 controlPoint2: CGPoint(x: widthForMath * 0.87, y: rect.height * 0.91))
        
        starPath.addCurve(to: CGPoint(x: widthForMath, y: 0),
                                 controlPoint1: CGPoint(x: widthForMath, y: rect.height * 0.64),
                                 controlPoint2: CGPoint(x: widthForMath, y: rect.height * 011))
        
        starPath.addCurve(to: CGPoint(x: widthForMath * 0.64, y: rect.height * 0.26),
                                 controlPoint1: CGPoint(x: widthForMath * 0.9, y: rect.height * 0.069),
                                 controlPoint2: CGPoint(x: widthForMath * 0.64, y: rect.height * 0.26))
        
        starPath.addLine(to: CGPoint(x: widthForMath * 0.65, y: rect.height * 0.25))
        starPath.close()
        fillColor.setFill()
        starPath.fill()
    }
    
//**************************************************
// MARK: - Self Public Methods
//**************************************************

//**************************************************
// MARK: - Override Public Methods
//**************************************************

    open override func draw(_ rect: CGRect) {
        if halfStar {
            self.drawHalfStar(rect)
        } else {
            self.drawFullStar(rect)
        }
    }
}
