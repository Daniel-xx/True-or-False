//
//  Question.swift
//  Quizzler
//
//  Created by Daniel Travers on 09/08/2017.
//  Copyright © 2017 Daniel Travers. All rights reserved.
//

import Foundation

class Question {
    
    let questionText : String
    let answer : Bool
    
    
    init(text: String, correctAnswer: Bool) {
        questionText = text
        answer = correctAnswer
    }
    
}
