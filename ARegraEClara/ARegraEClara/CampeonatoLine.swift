
//
//  CampeonatoLine.swift
//  ARegraEClara
//
//  Created by Wesllei on 12/08/15.
//  Copyright © 2015 Wesllei. All rights reserved.
//

import Foundation

class CampeonatoLine {
    var nome : String?
    var campeonatos : [Campeonato]
    
    init(named:String, incluiCampeonato:[Campeonato]){
        
        nome = named
        campeonatos = incluiCampeonato
        
    }
    
    
    class func campeonatoLine ()->[CampeonatoLine]{
    
        return [self.iCampeonato()]
    }
    
    
    private class func iCampeonato()->CampeonatoLine{
        
        var campeonatos = [Campeonato]()
        
        campeonatos.append(Campeonato(nomeCampeonato: "Brasileirao", paisCampeonato: .Brasil, clubesPrincipais: clubes , image: "Brasileirao.png"))
        
        return  CampeonatoLine(named: "iCampeonato", incluiCampeonato: campeonatos)
        
    }
    
}

