//
//  QuestionJsonStrategy.swift
//  ExamApp
//
//  Created by Vuslat Yolcu on 27.03.2023.
//  Copyright © 2023 Mohammad Azam. All rights reserved.
//

import Foundation

class QuestionJsonStrategy: QuestionStrategy {
    
    var questions: [Question] = [Question]()
    var questionIndex: Int = 0
    var currentQuestion: Question!
    
    func nextQuestion() -> Question {
        
        if questionIndex >= questions.count {
            return currentQuestion
        }
        
        currentQuestion = questions[questionIndex]
        questionIndex += 1
        return currentQuestion
    }
    
    required init(name: String) {
        if let path = Bundle.main.path(forResource: name, ofType: "json") {
            
            let data = try! Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
            let questionDictionary = try! JSONDecoder().decode([String: [Question]].self, from: data)
            
            if let qs = questionDictionary["questions"] {
                questions = qs
            }
        }
            
    }
}
