//
//  Pergunta.swift
//  ARegraEClara
//
//  Created by Wesllei on 12/08/15.
//  Copyright © 2015 Wesllei. All rights reserved.
//

import Foundation

public enum Nivel{
    case Facil
    case Medio
    case Dificil
    case Hard

}


class Pergunta {
    var id : String?
    var descricaoPergunta : String?
    var respostaPergunta : String?
    var alternativasPergunta : [String]?
    var nivelPergunta : Nivel
    
    init(id:String, pergunta:String, resposta:String, alternativas: [String], nivel:Nivel){
        self.id = id
        self.descricaoPergunta = pergunta
        self.respostaPergunta = resposta
        self.alternativasPergunta = alternativas
        self.nivelPergunta = nivel
        
    }

}

var perguntas: [Pergunta]{
    var perguntaLine = PerguntaLine.perguntaLine()
    return perguntaLine[0].perguntas
}