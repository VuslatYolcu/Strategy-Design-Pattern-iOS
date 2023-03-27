//
//  QuestionsTableViewController.swift
//  ExamApp
//
//  Created by Mohammad Azam on 9/4/18.
//  Copyright © 2018 Mohammad Azam. All rights reserved.
//

import Foundation
import UIKit

class QuestionsViewController :UIViewController {
    
    @IBOutlet weak var questionTextLabel :UILabel! 
    
    var questionGroup :QuestionGroup!
    private var questions = [Question]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.largeTitleDisplayMode = .never
        self.title = questionGroup.displayName
       
    }
    
    @IBAction func nextQuestionButtonPressed() {
       
    }
    
    
}

