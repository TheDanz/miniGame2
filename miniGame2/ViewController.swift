//
//  ViewController.swift
//  miniGame2
//
//  Created by Danil Ryumin on 06.12.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var view1: MyView!
    @IBOutlet weak var view2: MyView!
    @IBOutlet weak var view3: MyView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func view1_click(_ gesture: UIPanGestureRecognizer) {
        let view1frame = view1.frame
        let view2frame = view2.frame
        let view3frame = view3.frame
        
        
        let gestureTranslation = gesture.translation(in: view)
        guard let gestureView = gesture.view else {
            return
        }

        gestureView.center = CGPoint(x: gestureView.center.x + gestureTranslation.x, y: gestureView.center.y + gestureTranslation.y)

        gesture.setTranslation(.zero, in: view)
        guard gesture.state == .ended else {
            return
        }
        
        // Проверяем лежит ли view1 на view2
        var isView2Xcross = false
        var isView2Ycross = false
        
        for value in Int(view2frame.minX)...Int(view2frame.maxX) {
            if Int(view1frame.minX) == value || Int(view1frame.maxX) == value {
                isView2Xcross = true
            }
        }
        
        for value in Int(view2frame.minY)...Int(view2frame.maxY) {
            if Int(view1frame.minY) == value || Int(view1frame.maxY) == value {
                isView2Ycross = true
            }
        }
        
        if isView2Xcross && isView2Ycross {
            UIView.animate(withDuration: 1, delay: 0, options: .curveLinear) {
                self.view1.alpha = 0.0
                self.view2.workingView.backgroundColor = .blue
                self.view2.frame = CGRect(x: view2frame.origin.x, y: view2frame.origin.y, width: view2frame.width + 20, height: view2frame.height + 20)
                return
            }
        }
        
        
        
        // Проверяем лежит ли view1 на view3
        var isView3Xcross = false
        var isView3Ycross = false
        
        for value in Int(view3frame.minX)...Int(view3frame.maxX) {
            if Int(view1frame.minX) == value || Int(view1frame.maxX) == value {
                isView3Xcross = true
            }
        }
        
        for value in Int(view3frame.minY)...Int(view3frame.maxY) {
            if Int(view1frame.minY) == value || Int(view1frame.maxY) == value {
                isView3Ycross = true
            }
        }
        
        if isView3Xcross && isView3Ycross {
            UIView.animate(withDuration: 1, delay: 0, options: .curveLinear) {
                self.view1.alpha = 0.0
                self.view3.workingView.backgroundColor = .blue
                self.view3.frame = CGRect(x: view3frame.origin.x, y: view3frame.origin.y, width: view3frame.width + 20, height: view3frame.height + 20)
                return
            }
        }
    }
    
    @IBAction func view2_click(_ gesture: UIPanGestureRecognizer) {
        let view1frame = view1.frame
        let view2frame = view2.frame
        let view3frame = view3.frame
        
        let gestureTranslation = gesture.translation(in: view)
        guard let gestureView = gesture.view else {
            return
        }

        gestureView.center = CGPoint(x: gestureView.center.x + gestureTranslation.x, y: gestureView.center.y + gestureTranslation.y)

        gesture.setTranslation(.zero, in: view)
        guard gesture.state == .ended else {
            return
        }
        
        // Проверяем лежит ли view2 на view1
        var isView1Xcross = false
        var isView1Ycross = false
        
        for value in Int(view1frame.minX)...Int(view1frame.maxX) {
            if Int(view2frame.minX) == value || Int(view2frame.maxX) == value {
                isView1Xcross = true
            }
        }
        
        for value in Int(view1frame.minY)...Int(view1frame.maxY) {
            if Int(view2frame.minY) == value || Int(view2frame.maxY) == value {
                isView1Ycross = true
            }
        }
        
        if isView1Xcross && isView1Ycross {
            UIView.animate(withDuration: 1, delay: 0, options: .curveLinear) {
                self.view2.alpha = 0.0
                self.view1.workingView.backgroundColor = .blue
                self.view1.frame = CGRect(x: view1frame.origin.x, y: view1frame.origin.y, width: view1frame.width + 20, height: view1frame.height + 20)
                return
            }
        }
        
        // Проверяем лежит ли view2 на view3
        var isView3Xcross = false
        var isView3Ycross = false
        
        for value in Int(view3frame.minX)...Int(view3frame.maxX) {
            if Int(view2frame.minX) == value || Int(view2frame.maxX) == value {
                isView3Xcross = true
            }
        }
        
        for value in Int(view3frame.minY)...Int(view3frame.maxY) {
            if Int(view2frame.minY) == value || Int(view2frame.maxY) == value {
                isView3Ycross = true
            }
        }
        
        if isView3Xcross && isView3Ycross {
            UIView.animate(withDuration: 1, delay: 0, options: .curveLinear) {
                self.view2.alpha = 0.0
                self.view3.workingView.backgroundColor = .blue
                self.view3.frame = CGRect(x: view3frame.origin.x, y: view3frame.origin.y, width: view3frame.width + 20, height: view3frame.height + 20)
                return
            }
        }
    }
    
    @IBAction func view3_click(_ gesture: UIPanGestureRecognizer) {
        let view1frame = view1.frame
        let view2frame = view2.frame
        let view3frame = view3.frame
        
        let gestureTranslation = gesture.translation(in: view)
        guard let gestureView = gesture.view else {
            return
        }

        gestureView.center = CGPoint(x: gestureView.center.x + gestureTranslation.x, y: gestureView.center.y + gestureTranslation.y)

        gesture.setTranslation(.zero, in: view)
        guard gesture.state == .ended else {
            return
        }
        
        
        // Проверяем лежит ли view3 на view1
        var isView1Xcross = false
        var isView1Ycross = false
        
        for value in Int(view1frame.minX)...Int(view1frame.maxX) {
            if Int(view3frame.minX) == value || Int(view3frame.maxX) == value {
                isView1Xcross = true
            }
        }
        
        for value in Int(view1frame.minY)...Int(view1frame.maxY) {
            if Int(view3frame.minY) == value || Int(view3frame.maxY) == value {
                isView1Ycross = true
            }
        }
        
        if isView1Xcross && isView1Ycross {
            UIView.animate(withDuration: 1, delay: 0, options: .curveLinear) {
                self.view3.alpha = 0.0
                self.view1.workingView.backgroundColor = .blue
                self.view1.frame = CGRect(x: view1frame.origin.x, y: view1frame.origin.y, width: view1frame.width + 20, height: view1frame.height + 20)
                return
            }
        }
        
        // Проверяем лежит ли view3 на view2
        var isView2Xcross = false
        var isView2Ycross = false
        
        for value in Int(view2frame.minX)...Int(view2frame.maxX) {
            if Int(view3frame.minX) == value || Int(view3frame.maxX) == value {
                isView2Xcross = true
            }
        }
        
        for value in Int(view2frame.minY)...Int(view2frame.maxY) {
            if Int(view3frame.minY) == value || Int(view3frame.maxY) == value {
                isView2Ycross = true
            }
        }
        
        if isView2Xcross && isView2Ycross {
            UIView.animate(withDuration: 1, delay: 0, options: .curveLinear) {
                self.view3.alpha = 0.0
                self.view2.workingView.backgroundColor = .blue
                self.view2.frame = CGRect(x: view2frame.origin.x, y: view2frame.origin.y, width: view2frame.width + 20, height: view2frame.height + 20)
                return
            }
        }
    }
}

