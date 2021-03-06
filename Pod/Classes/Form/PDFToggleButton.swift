//
//  PDFToggleButton.swift
//  Pods
//
//  Created by Brian Stern on 11/14/16.
//
//

import UIKit

class PDFToggleButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setup() {
        addTarget(self, action: #selector(PDFToggleButton.buttonTapped), for: .touchUpInside)
        setTitle("", for: .normal)
        setTitle(checkmark, for: .selected)
        setTitleColor(UIColor.black, for: .normal)
        titleLabel?.adjustsFontSizeToFitWidth = true
        titleLabel?.font = UIFont(name: "ZapfDingbatsITC", size: 10)
    }

    func buttonTapped() {
        self.isSelected = !self.isSelected
    }
}
