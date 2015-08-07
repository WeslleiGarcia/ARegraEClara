//
//  UIViewControllerQuizCampeonato.swift
//  ARegraEClara
//
//  Created by Wesllei on 07/08/15.
//  Copyright © 2015 Wesllei. All rights reserved.
//

import UIKit

class UIViewControllerQuizCampeonato: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    var array : [String] = []
    
    var name : AnyObject?{
        get{
            return NSUserDefaults.standardUserDefaults().objectForKey("name")
        }
        
        set{
            NSUserDefaults.standardUserDefaults().setObject(newValue!, forKey: "name")
            NSUserDefaults.standardUserDefaults().synchronize()
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        array = ["Brasileirao.png", "Alemao-bundesliga.png", "CopaBridgestoneLibertadores.png", "CopaDoBrasil.png", "Espanhol-LFP.png", "FIFA.png", "Ingles-PremierLeague.png", "ItalianoLegaCalcio.png", "UEFA-ChampionsLeague.png", "UEFA-EuropaLeague.png"]
        
        
    }
    
    
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return array.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! myCell
        
        cell.imgView.image = UIImage(named: array[indexPath.row])
        
        return cell
        
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        // "name" de var name = AnyObject?
        
        name = array[indexPath.row]
    }
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

}
