//
//  PracticeView.swift
//  Practice4Novo
//
//  Created by Juan Manuel Moreno on 21/11/2019.
//  Copyright © 2019 Juan Manuel Moreno. All rights reserved.
//

import UIKit
import Firebase

class PracticeView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    var view: UIView!
    
    @IBOutlet weak var textPractice: UITextField!
    
        override init(frame: CGRect) {
            super.init(frame: frame)
            xibSetup()
        }
        
        required init?(coder aDecoder: NSCoder) {
            super.init(coder: aDecoder)
            xibSetup()
        }
        
        func xibSetup() {
            self.view = loadViewFromNib()
            self.view.frame = bounds
            self.view.autoresizingMask = [UIView.AutoresizingMask.flexibleWidth, UIView.AutoresizingMask.flexibleHeight]
            addSubview(view)
        }
        
        func loadViewFromNib() -> UIView {
            let bundle = Bundle(for: type(of:self))
            let nib = UINib(nibName: "PracticeView", bundle: bundle)
            let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
            return view
        }
    @IBAction func onButtonClick(_ sender: Any) {
        print("LAURA")
        Analytics.logEvent("EjercicioAnalytics", parameters: [:])
    }
}
