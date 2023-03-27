//
//  QuestionXmlStrategy.swift
//  ExamApp
//
//  Created by Vuslat Yolcu on 27.03.2023.
//  Copyright © 2023 Mohammad Azam. All rights reserved.
//

import Foundation

class QuestionXmlStrategy: QuestionStrategy {
    
    var questions: [Question] = [Question]()
    var questionIndex: Int = 0
    
    func nextQuestion() -> Question {
        return Question(text: "", point: 10, isCorrect: true)
    }
    
    required init(name: String) {
        // read a xml file and populate the questions array
    }
}
