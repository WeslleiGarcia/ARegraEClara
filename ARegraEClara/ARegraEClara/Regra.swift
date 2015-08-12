//
//  Regra.swift
//  ARegraEClara
//
//  Created by Wesllei on 10/08/15.
//  Copyright © 2015 Wesllei. All rights reserved.
//

import Foundation
import UIKit
class Regra {
    
    
    var numeroRegra : String
    var titulo :  String?
    var descricao :  String?
    var topicos : [String]?
    var descricaoTopico :  [String]?
    var excecao : String?
    var imagem : UIImage?
    
    init(numeroRegra : String, titulo :  String, descricao :  String, topicos : [String], descricaoTopico :  [String], excecao:String, nomeImagem: String){
        
        self.numeroRegra = numeroRegra
        self.titulo = titulo
        self.descricao = descricao
        self.topicos = topicos
        self.descricaoTopico = descricaoTopico
        self.excecao = excecao
        
        let img = UIImage(named: nomeImagem)
        imagem = img
    
        
    }
    
}



var regras: [Regra]{
    var regraLine = RegraLine.regraLine()
    return regraLine[0].regras
}


