//
//  Quiz.swift
//  SwiftQuiz
//
//  Created by Henrico Lazuroz on 24/06/20.
//  Copyright © 2020 Henrico Lazuroz. All rights reserved.
//

import Foundation

class Quiz {
    
    let question: String
    let options: [String]
    private let correctedAnswer: String
    
    init(question: String, options: [String], correctedAnswer: String) {
        self.question = question
        self.options = options
        self.correctedAnswer = correctedAnswer
    }
    
    func validateOption(_ index: Int) -> Bool {
        let answer = options[index]
        return answer == self.correctedAnswer
    }
    
    deinit {
        print("Liberou quiz da memória!")
    }
}
