//
//  QuestionBank.swift
//  Quizzler
//
//  Created by Daniel Travers on 10/08/2017.
//  Copyright © 2017 Daniel Travers. All rights reserved.
//

import Foundation

class QuestionBank {
    
    var list = [Question]()
    
    
    
    
    init() {
        // 1
        let item = Question(text: "Valentine\'s day is banned in Saudi Arabia.", correctAnswer: true)
        list.append(item)
        
        // 2
        list.append(Question(text: "A slug\'s blood is green.", correctAnswer: true))
        
        // 3
        
        list.append(Question(text: "Approximately one quarter of human bones are in the feet.", correctAnswer: true))
        
        list.append(Question(text: "The total surface area of two human lungs is approximately 70 square metres.", correctAnswer: true))
        
        list.append(Question(text: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", correctAnswer: true))
        
        list.append(Question(text: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", correctAnswer: false))
        
        list.append(Question(text: "It is illegal to pee in the Ocean in Portugal.", correctAnswer: true))
        
        list.append(Question(text: "You can lead a cow down stairs but not up stairs.", correctAnswer: false))
        
        list.append(Question(text: "Google was originally called \"Backrub\".", correctAnswer: true))
        
        list.append(Question(text: "Buzz Aldrin\'s mother\'s maiden name was \"Moon\".", correctAnswer: true))
        
        list.append(Question(text: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", correctAnswer: false))
        
        list.append(Question(text: "No piece of square dry paper can be folded in half more than 7 times.", correctAnswer: false))
        
        list.append(Question(text: "Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.", correctAnswer: true))
        
        list.append(Question(text: "The ostrich is the fastest bird on foot?", correctAnswer: true))
        
//        #15 Below this line
        
        list.append(Question(text: "A turtle is an amphibian.", correctAnswer: false))
        
        list.append(Question(text: "As far as has ever been reported, no-one has ever seen an ostrich bury its head in the sand.", correctAnswer: true))
        
        list.append(Question(text: "Popeye’s nephews were called Peepeye, Poopeye, Pipeye and Pupeye.", correctAnswer: true))
        
        list.append(Question(text: "Sneezes regularly exceed 100 m.p.h.", correctAnswer: true))
        
        list.append(Question(text: "Virtually all Las Vegas gambling casinos ensure that they have no clocks", correctAnswer: true))
        
//        20 below
        
        list.append(Question(text: "The Great Wall Of China is visible from the moon.", correctAnswer: false))
        
        list.append(Question(text: "The longest distance swam underwater in one breath is 200metres. (6th November 2008)", correctAnswer: true))
        
        list.append(Question(text: "The record for the fastest time to solve a Rubik’s Cube one-handed is 37 seconds. ", correctAnswer: false))
        
        list.append(Question(text: "Jupiter is the fifth planet from the sun.", correctAnswer: true))
        
        list.append(Question(text: "The Guinness World Record for most fingers and toes at birth is held by an Indian man born with 14 fingers and 20 toes in total.", correctAnswer: true))
        
        list.append(Question(text: "Engelbert Humperdinck was born in 1928.", correctAnswer: false))
        
        list.append(Question(text: "Hotmail was launched in 1996.", correctAnswer: true))
        
        list.append(Question(text: "Seoul is the capital of North Korea.", correctAnswer: false))
        
        list.append(Question(text: "Alliumphobia is a fear of garlic.", correctAnswer: true))
        
        list.append(Question(text: "‘Fauntleroy’ is the middle name of Donald Duck.", correctAnswer: true))
        
//        30
        
        list.append(Question(text: "Henry VIII had an extra finger on each hand.", correctAnswer: false))
        
        list.append(Question(text: "Alfred Hitchcock had no belly button as it was removed during surgery.", correctAnswer: true))
        
        list.append(Question(text: "The ‘black box’ in an aeroplane is black.", correctAnswer: false))
        
        list.append(Question(text: "The distance, as the crow flies, from London to Edinburgh, is greater than the distance from London to Glasgow.", correctAnswer: false))
        
        list.append(Question(text: "Geri Halliwell named her daughter ‘Bluebell Madonna’.", correctAnswer: true))
        
        list.append(Question(text: "Brendan O’Carroll, famous as ‘Mrs Brown’ from ‘Mrs Brown’s Boys’ is the cousin of Kenneth Branagh.", correctAnswer: false))
        
        list.append(Question(text: "UK shops earn more revenue from Halloween than they do from Bonfire Night", correctAnswer: true))
        
        list.append(Question(text: "Brandon Lee died during filming for ‘The Crow’ in 1994 after an accident with a prop gun during a shooting scene. ", correctAnswer: true))
        
        list.append(Question(text: "Stephen King’s ‘The Shining’ was originally called ‘Halloween Hotel’.", correctAnswer: false))
        
        list.append(Question(text: "There are 259 steps up to the ‘Whispering Gallery’ in St Paul’s Cathedral.", correctAnswer: true))
        
//        40
        
        list.append(Question(text: "Centipedes always have 100 feet.", correctAnswer: false))
        
        list.append(Question(text: "111,111,111 x 111,111,111 = 12,345,678,987,654,321", correctAnswer: true))

    }
    
}
