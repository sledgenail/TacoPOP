//
//  MainVC.swift
//  TacoPOP
//
//  Created by Emmanuel Erilibe on 11/20/16.
//  Copyright © 2016 Emmanuel Erilibe. All rights reserved.
//

import UIKit

class MainVC: UIViewController, DataServiceDelegate {

    @IBOutlet weak var headerView: HeaderView!
    @IBOutlet weak var collectioView: UICollectionView!
    
    var ds: DataService = DataService.instance
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectioView.delegate = self
        collectioView.dataSource = self
        
        ds.delegate = self
        ds.loadDeliciousTacoData()
        
        headerView.addDropShadow()
    }
    
    func deliciousTacoDataLoaded() {
        print("Delicious Taco Data Loaded!")
    }

}

extension MainVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ds.tacoArray.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectioView.dequeueReusableCell(withReuseIdentifier: "TacoCell", for: indexPath) as? TacoCell {
            cell.configureCell(taco: ds.tacoArray[indexPath.row])
            return cell
        }
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 95, height: 95)
    }
}
