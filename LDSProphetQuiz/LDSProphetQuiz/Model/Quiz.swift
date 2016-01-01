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
        let names = PhotoDataSource.names
        
        var questions = [Question]()
        
        for _ in 1...10 {
        
            var answers = [Answer]()
        
            // Build correct answer
            let random = randomNumberFromRange(1, upper: photos.count)
            
            guard let image = photos[random] where image != nil else {
                fatalError("Unable to load photo")
            }
            guard let correctName = names[random] where correctName != "" else {
                fatalError("Unable to load name")
            }
            
            answers.append(Answer(isCorrect: true, title: correctName))
            
            // Build fake answers
            for _ in 1...3 {
                
                var fakeRandom: Int
                repeat {
                    fakeRandom = randomNumberFromRange(1, upper: photos.count)
                } while (random != fakeRandom)
                
                guard let fakeName = names[fakeRandom] where fakeName != "" else {
                    fatalError("Unable to load name")
                }

                /// TODO: Ensure we don't have duplicate fake answers in the question
                
                answers.append(Answer(isCorrect: false, title: fakeName))
            }
            
            questions.append(Question(photo: image!, answers: answers))
        }
        
        return Quiz(questions: questions)
    }
}

func randomNumberFromRange (lower: Int , upper: Int) -> Int {
    return lower + Int(arc4random_uniform(UInt32(upper - lower + 1)))
}

