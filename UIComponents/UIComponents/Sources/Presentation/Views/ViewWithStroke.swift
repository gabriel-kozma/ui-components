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
public class ViewWithStroke : UIView {

//**************************************************
// MARK: - Properties
//**************************************************
    
    @IBInspectable var lineWidth: CGFloat = 1
    @IBInspectable var lineColor: UIColor = UIColor.grayColor()
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
    
    private func drawTopLine(rect: CGRect) {
        let line = UIBezierPath()
        line.moveToPoint(CGPointMake(rect.origin.x, rect.origin.y))
        line.addLineToPoint(CGPointMake(rect.width, rect.origin.y))
        self.lineColor.setStroke()
        line.lineWidth = self.lineWidth
        line.stroke()
    }
    
    private func drawBottomLine(rect: CGRect) {
        let line = UIBezierPath()
        line.moveToPoint(CGPointMake(rect.origin.x, rect.height))
        line.addLineToPoint(CGPointMake(rect.width, rect.height))
        self.lineColor.setStroke()
        line.lineWidth = self.lineWidth
        line.stroke()
    }
    
    private func drawLeftLine(rect: CGRect) {
        let line = UIBezierPath()
        line.moveToPoint(CGPointMake(rect.origin.x, rect.origin.y))
        line.addLineToPoint(CGPointMake(rect.origin.x, rect.height))
        self.lineColor.setStroke()
        line.lineWidth = self.lineWidth
        line.stroke()
    }
    
    private func drawRightLine(rect: CGRect) {
        let line = UIBezierPath()
        line.moveToPoint(CGPointMake(rect.width, rect.origin.y))
        line.addLineToPoint(CGPointMake(rect.width, rect.height))
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
    
    public override func drawRect(rect: CGRect) {
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
