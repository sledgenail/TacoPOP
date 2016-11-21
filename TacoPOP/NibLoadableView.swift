//
//  NibLoadableView.swift
//  TacoPOP
//
//  Created by Emmanuel Erilibe on 11/20/16.
//  Copyright © 2016 Emmanuel Erilibe. All rights reserved.
//

import UIKit

protocol NibLoadableView: class {}

extension NibLoadableView where Self: UIView {
    static var nibName: String {
        return String(describing: self)
    }
}
