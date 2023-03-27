//
//  QuestionStrategy.swift
//  ExamApp
//
//  Created by Vuslat Yolcu on 27.03.2023.
//  Copyright © 2023 Mohammad Azam. All rights reserved.
//

import Foundation

protocol QuestionStrategy {
    var questions: [Question] { get set }
    var questionIndex: Int { get set }
    
    init(name: String)
    
    func nextQuestion() -> Question
    
}
