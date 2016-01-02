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
    var index: Int
    var isCorrect: Bool
    var title: String
}

class QuizService {
    
    let photos = PhotoDataSource.photos
    let names = PhotoDataSource.names
    
    func createGame(questionsCount: Int, answersCount: Int) -> Quiz {
        
        guard questionsCount > 0 else {
            fatalError("You must have more than 1 question")
        }
        
        guard answersCount > 1 else {
            fatalError("You must have more than 2 answers per question")
        }
        
        guard answersCount < photos.count else {
            fatalError("You cannot have more answers than the entire list of possible choice")
        }
        
        var questions = [Question]()
        
        for _ in 1...questionsCount {
        
            var answers = [Answer]()
            var correctImage: UIImage!
        
            let randomNumbers = generateRandomNumbers(answersCount, lower: 1, upper: photos.count, isUnique: true)
            
            for index in 0...answersCount-1 {
                
                if index == 0 {
                    let (image, correctName) = buildCorrectAnswer(randomNumbers[index])
                    correctImage = image
                    answers.append(Answer(index: randomNumbers[index], isCorrect: true, title: correctName))
                }
                else {
                    let fakeRandom = randomNumbers[index]
                    guard let fakeName = names[fakeRandom] where fakeName != "" else {
                        fatalError("Unable to load name")
                    }
                    
                    answers.append(Answer(index: randomNumbers[index], isCorrect: false, title: fakeName))
                }
            }
            
            questions.append(Question(photo: correctImage, answers: answers))
        }
        
        return Quiz(questions: questions)
    }
    
    func buildCorrectAnswer(index: Int) -> (UIImage, String) {
        guard let image = photos[index] where image != nil else {
            fatalError("Unable to load photo")
        }
        guard let correctName = names[index] where correctName != "" else {
            fatalError("Unable to load name")
        }

        return (image!, correctName)
    }
}

func randomNumberFromRange (lower: Int , upper: Int) -> Int {
    return lower + Int(arc4random_uniform(UInt32(upper - lower + 1)))
}

func generateRandomNumbers(total: Int, lower: Int, upper: Int, isUnique: Bool) -> [Int] {
    var numbers = [Int]()
    
    repeat {
        let r = randomNumberFromRange(lower, upper: upper)
        
        if isUnique {
            if !numbers.contains(r) {
                numbers.append(r)
            }
        }
        else {
            numbers.append(r)
        }
        
    } while (total != numbers.count)
    
    return numbers
}
