/*
 *	ViewWithStroke.swift
 *	UIComponents
 *
 *	Created by Gabriel Kozma on /3/3016.
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
open class ViewWithStroke : UIView {

//**************************************************
// MARK: - Properties
//**************************************************
    
    @IBInspectable var lineWidth: CGFloat = 1
    @IBInspectable var lineColor: UIColor = UIColor.gray
    @IBInspectable var showTopLine: Bool = true
    @IBInspectable var showBottomLine: Bool = true
    @IBInspectable var showLeftLine: Bool = true
    @IBInspectable var showRightLine: Bool = true
    
//**************************************************
// MARK: - Constructors
//**************************************************

//**************************************************
// MARK: - Private Methods
//**************************************************
    
    fileprivate func drawTopLine(_ rect: CGRect) {
        let line = UIBezierPath()
        line.move(to: CGPoint(x: rect.origin.x, y: rect.origin.y))
        line.addLine(to: CGPoint(x: rect.width, y: rect.origin.y))
        self.lineColor.setStroke()
        line.lineWidth = self.lineWidth
        line.stroke()
    }
    
    fileprivate func drawBottomLine(_ rect: CGRect) {
        let line = UIBezierPath()
        line.move(to: CGPoint(x: rect.origin.x, y: rect.height))
        line.addLine(to: CGPoint(x: rect.width, y: rect.height))
        self.lineColor.setStroke()
        line.lineWidth = self.lineWidth
        line.stroke()
    }
    
    fileprivate func drawLeftLine(_ rect: CGRect) {
        let line = UIBezierPath()
        line.move(to: CGPoint(x: rect.origin.x, y: rect.origin.y))
        line.addLine(to: CGPoint(x: rect.origin.x, y: rect.height))
        self.lineColor.setStroke()
        line.lineWidth = self.lineWidth
        line.stroke()
    }
    
    fileprivate func drawRightLine(_ rect: CGRect) {
        let line = UIBezierPath()
        line.move(to: CGPoint(x: rect.width, y: rect.origin.y))
        line.addLine(to: CGPoint(x: rect.width, y: rect.height))
        self.lineColor.setStroke()
        line.lineWidth = self.lineWidth
        line.stroke()
    }
    
//**************************************************
// MARK: - Self Public Methods
//**************************************************

//**************************************************
// MARK: - Override Public Methods
//**************************************************
    
    open override func draw(_ rect: CGRect) {
        if self.showTopLine {
            self.drawTopLine(rect)
        }
        
        if self.showBottomLine {
            self.drawBottomLine(rect)
        }
        
        if self.showLeftLine {
            self.drawLeftLine(rect)
        }
        
        if self.showRightLine {
            self.drawRightLine(rect)
        }
    }
}
