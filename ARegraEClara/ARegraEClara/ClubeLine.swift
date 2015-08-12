
//
//  ClubeLine.swift
//  ARegraEClara
//
//  Created by Wesllei on 12/08/15.
//  Copyright © 2015 Wesllei. All rights reserved.
//

import Foundation

class ClubeLine {
    var nome :  String?
    var clubes : [Clube]
    
    init(named: String, incluiClube : [Clube]){
        nome = named
        clubes = incluiClube
    }
    
    class func clubeLine()->[ClubeLine]{
        return [self.iClube()]
    }
    
    
    
    private class func iClube()->ClubeLine{
        var clubes = [Clube]()
        
        clubes.append(Clube(nomeClube: "Flamengo", paisClube: .Brasil, image: "Flamengo.png"))
        
        clubes.append(Clube(nomeClube: "Vasco", paisClube: .Brasil, image: "Vasco.png"))
        
        
        return ClubeLine(named: "iClube", incluiClube: clubes)
    }
    
}

var clubeLines: [ClubeLine] = {
    return ClubeLine.clubeLine()
    }()
