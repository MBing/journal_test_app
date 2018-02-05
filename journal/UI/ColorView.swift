//
//  ColorView.swift
//  journal
//
//  Created by Martin Demiddel on 05.02.18.
//  Copyright © 2018 Martin Demiddel. All rights reserved.
//

import UIKit

class ColorView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        createView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        createView()
    }
    
    func createView() {
        let radius = max(frame.width, frame.height) / 2
        layer.cornerRadius = radius
        clipsToBounds = true
        backgroundColor = .lightGray
    }
}
