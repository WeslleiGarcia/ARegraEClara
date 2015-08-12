//
//  Clube.swift
//  ARegraEClara
//
//  Created by Wesllei on 12/08/15.
//  Copyright © 2015 Wesllei. All rights reserved.
//

import Foundation
import UIKit

public enum Pais{
    case Brasil
    case Argentina
    case Bolivia
    case Uruguai
    case Paraquai
    case Chile
    case Mexico
    case Peru
    case Equador
    case Colombia
    case Espanha
    case Portugal
    case Inglaterra
    case Russia
    case Franca
    case Alemanha
    case Holanda
    case Italia
}

class Clube {
    var nome :  String?
    var pais : Pais
    var imagem : UIImage?
    
    
    init(nomeClube: String, paisClube:Pais, image : String){
        self.nome = nomeClube
        self.pais = paisClube
        
        let img = UIImage(named: image)
        imagem = img
    }
}

var clubes: [Clube]{
    var clubeLine = ClubeLine.clubeLine()
    return clubeLine[0].clubes
}





