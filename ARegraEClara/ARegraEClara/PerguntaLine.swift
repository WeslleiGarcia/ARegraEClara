//
//  PerguntaLine.swift
//  ARegraEClara
//
//  Created by Wesllei on 12/08/15.
//  Copyright © 2015 Wesllei. All rights reserved.
//

import Foundation

class PerguntaLine {
    var nome : String?
    var perguntas : [Pergunta]
    
    init(named:String, incluiPergunta: [Pergunta]){
        nome = named
        perguntas = incluiPergunta
    }
    
    class func perguntaLine ()->[PerguntaLine]{
        
        return [self.iPergunta()]
    }
    
    
    private class func iPergunta()->PerguntaLine{
        
        var perguntas = [Pergunta]()
        
        perguntas.append(Pergunta(pergunta: "", resposta: "", alternativas: ["", "", "", "", ""], nivel: .Facil))
        
        return  PerguntaLine(named: "iPergunta", incluiPergunta: perguntas)
        
    }

}


var perguntaLines: [PerguntaLine] = {
    return PerguntaLine.perguntaLine()
    }()