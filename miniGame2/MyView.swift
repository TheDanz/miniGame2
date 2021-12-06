//
//  MyView.swift
//  miniGame2
//
//  Created by Danil Ryumin on 06.12.2021.
//

import UIKit

@IBDesignable class MyView: UIView {

    @IBOutlet var view: UIView!
    var xibName: String = "MyView"
    var workingView: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setCustomView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setCustomView()
    }
    
    func getFromXib() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let xib = UINib(nibName: xibName, bundle: bundle)
        let view = xib.instantiate(withOwner: self, options: nil).first as! UIView
        return view
    }
    
    func setCustomView() {
        workingView = getFromXib()
        workingView.frame = bounds
        workingView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        workingView.layer.cornerRadius = frame.size.width / 2
        workingView.backgroundColor = .systemBlue
        
        addSubview(workingView)
    }
}
