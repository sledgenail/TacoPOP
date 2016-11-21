//
//  TacoCell.swift
//  TacoPOP
//
//  Created by Emmanuel Erilibe on 11/20/16.
//  Copyright © 2016 Emmanuel Erilibe. All rights reserved.
//

import UIKit

class TacoCell: UICollectionViewCell {

    @IBOutlet weak var tacoImage: UIImageView!
    @IBOutlet weak var tacoLabel: UILabel!
    
    var taco: Taco!
    
    func configureCell(taco: Taco) {
        self.taco = taco
        tacoImage.image = UIImage(named: taco.proteinId.rawValue)
        tacoLabel.text = taco.productName
    }

}
