//
//  Quiz.swift
//  LDSProphetQuiz
//
//  Created by Caleb Robinson on 12/24/15.
//  Copyright © 2015 Caleb Robinson. All rights reserved.
//

import UIKit

struct Quiz {
    var questions: [Question]
    
}


struct Question {
    var photo: UIImage
    var answers: [Answer]
    
}

struct Answer {
    var isCorrect: Bool
    var title: String
}

class QuizService {
    func createGame() -> Quiz {
        let photos = PhotoDataSource.photos
        
        // 1. Loop 10 times to build out the game
        
        
        // 2. In each loop, 
        
        // 2a. Get a random picture, with its name
        
        // 2b. Fill in 3 fake answers, with their name
        
        // 2c. Add it to the answers list, then to the question. 
        
        // 2d. Add question to the list of questions in the quiz
        
        
        
        
        
        
        
        
        
        let random = randomNumberFromRange(1, upper: photos.count)
        
        guard let image = photos[random] where image != nil else {
            fatalError("Unable to load photo")
        }
        
        var answers = [Answer]()
        
        for index in 1...10 {
            let answerRandom = randomNumberFromRange(1, upper: photos.count)

            let title = PhotoDataSource.names[answerRandom]
            print(title)
            let isCorrect = random == answerRandom ? true : false
            print(isCorrect)
            
            let answer = Answer(isCorrect: isCorrect, title: title!)
            answers.append(answer)
        }
        
        let question = Question(photo: image!, answers: answers)
        print(question)
        
        
        let quiz = Quiz(questions: [question])
        return quiz
    }
}

func randomNumberFromRange (lower: Int , upper: Int) -> Int {
    return lower + Int(arc4random_uniform(UInt32(upper - lower + 1)))
}

