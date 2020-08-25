//
//  Game.swift
//  OpenQuizz
//
//  Created by Morganne Julian on 11/08/2020.
//  Copyright © 2020 Morgane Julian. All rights reserved.
//

import Foundation

class Game {
    var score = 0
    
    public var questions = [Question]()
    public var currentIndex = 0
    
    var state: State = .onGoing
    
    enum State {
        case onGoing, over
    }
    
    public var currentQuestion: Question {
        return questions[currentIndex]
    }
    
}
