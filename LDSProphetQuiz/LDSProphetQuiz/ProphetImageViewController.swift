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
    
    @IBAction func handleSwitchImage(sender: AnyObject) {
        let random = randomNumberFromRange(1, upper: photos.count)
        
        if let image = photos[random] {
            prophetImageView.image = image
        }
    }
}

func randomNumberFromRange (lower: Int , upper: Int) -> Int {
    return lower + Int(arc4random_uniform(UInt32(upper - lower + 1)))
}