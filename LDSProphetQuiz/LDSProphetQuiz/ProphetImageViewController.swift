//
//  ProphetImageViewController.swift
//  LDSProphetQuiz
//
//  Created by Caleb Robinson on 11/27/15.
//  Copyright © 2015 Caleb Robinson. All rights reserved.
//

import UIKit

class ProphetImageViewController: UIViewController {

    @IBOutlet weak var prophetImageView: UIImageView!
    
    let photos: [Int: UIImage?] = PhotoDataSource.photos
    var quiz: Quiz?
    var questionIndex: Int = 0
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)

        let qs = QuizService()
        quiz = qs.createGame(10, answersCount: 4)
    }
    
    @IBAction func handleSwitchImage(sender: AnyObject) {
        
        guard questionIndex < quiz?.questions.count else {
            print("Game is over. Thank you.")
            return
        }
        
        if let image = quiz?.questions[questionIndex].photo {
            prophetImageView.image = image
            questionIndex++
        }
        
        // TODO: Caleb - now that we are showing the right image, we need to show the people to choose from.
    }
}
