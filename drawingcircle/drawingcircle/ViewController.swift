//
//  ViewController.swift
//  drawingcircle
//
//  Created by Ali on 11/17/18.
//  Copyright © 2018 Ali. All rights reserved.
//

import UIKit
import CoreGraphics
class ViewController: UIViewController {
    
    
    let shapLayer = CAShapeLayer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // lets draw a circle in somehow
        let center = view.center
        
        let ciercularPath = UIBezierPath(arcCenter: center, radius: 100, startAngle: -CGFloat.pi / 2, endAngle: 3 * CGFloat.pi / 2, clockwise: true)
        shapLayer.path = ciercularPath.cgPath
        
        shapLayer.strokeColor = UIColor.red.cgColor
        shapLayer.lineCap = kCALineCapRound
        //shapLayer.lineDashPattern = [50,40,30,20,10]
        shapLayer.fillColor = UIColor.clear.cgColor
        shapLayer.lineWidth = 10
        shapLayer.strokeEnd = 0
        view.layer.addSublayer(shapLayer)
        
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTap)))
    }
    @objc private func handleTap() {
        print("hello you there")
        
        let basicAnimation = CABasicAnimation(keyPath:"strokeEnd")
        basicAnimation.toValue = 1
        basicAnimation.duration = 2
        basicAnimation.fillMode = kCAFillModeForwards
        basicAnimation.isRemovedOnCompletion = false
        shapLayer.add(basicAnimation, forKey: "uAreSoBasic")
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

