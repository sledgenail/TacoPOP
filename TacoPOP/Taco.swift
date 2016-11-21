//
//  Taco.swift
//  TacoPOP
//
//  Created by Emmanuel Erilibe on 11/20/16.
//  Copyright © 2016 Emmanuel Erilibe. All rights reserved.
//

import Foundation

enum TacoShell: Int {
    case Flour = 1
    case Corn = 2
}

enum TacoProtien: String {
    case Beef = "Beef"
    case Chicken = "Chicken"
    case Brisket = "Brisket"
    case Fish = "Fish"
    
}

enum TacoCondiment: Int {
    case Loaded = 1
    case Plain = 2
    
}

struct Taco {
    private var _id: Int!
    private var _productName: String!
    private var _shellId: TacoShell!
    private var _proteinId: TacoProtien!
    private var _condimentId: TacoCondiment!
    
    var id: Int {
        return _id
    }
    var productName: String {
        return _productName
    }
    
    var shellId: TacoShell {
        return _shellId
    }
    
    var proteinId: TacoProtien {
        return _proteinId
    }
    
    var condimentId: TacoCondiment {
        return _condimentId
    }
    
    init(id: Int, productName: String, shellId: Int, proteinId: Int, condimentId: Int) {
        _id = id
        _productName = productName
        
        //Taco Shell
        switch shellId {
        case 2:
            self._shellId = TacoShell.Corn
        default:
            self._shellId = TacoShell.Flour
        }
        
        // Taco Protein
        switch proteinId {
        case 2:
            self._proteinId = TacoProtien.Chicken
        case 3:
            self._proteinId = TacoProtien.Brisket
        case 4:
            self._proteinId = TacoProtien.Fish
        default:
            self._proteinId = TacoProtien.Beef
        }
        
        switch condimentId {
        case 2:
            self._condimentId = TacoCondiment.Plain
        default:
            self._condimentId = TacoCondiment.Loaded
        }
        
    }
    
}
