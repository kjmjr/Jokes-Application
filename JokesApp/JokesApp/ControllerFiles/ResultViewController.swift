//
//  ResultViewController.swift
//  JokesApp
//
//  Created by kevin mcadoo on 4/25/19.
//  Copyright © 2019 Apple Inc. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    
    @IBOutlet weak var selectedJokeOne: UILabel!
    
    @IBOutlet weak var selectedJokeTwo: UILabel!
    
    
    @IBOutlet weak var selectedJokeThree: UILabel!
    
    
    @IBOutlet weak var selectedJokeFour: UILabel!
    
    @IBOutlet weak var selectedJokeFive: UILabel!
    
    @IBOutlet weak var selectedJokeSix: UILabel!
    
    @IBOutlet weak var selectedJokeSeven: UILabel!
    
    @IBOutlet weak var selectedJokeEight: UILabel!
    
    
    @IBOutlet weak var selectedJokeNine: UILabel!
    
    
    @IBOutlet weak var selectedJokeTen: UILabel!
    
    
    
   
    
    @IBOutlet weak var finalScore: UILabel!
    
    var j1 = String()
    var j2 = String()
    var j3 = String()
    var j4 = String()
    var j5 = String()
    var j6 = String()
    var j7 = String()
    var j8 = String()
    var j9 = String()
    var j10 = String()
    var finalResult = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        selectedJokeOne.text = j1
        selectedJokeTwo.text = j2
        selectedJokeThree.text = j3
        selectedJokeFour.text = j4
        selectedJokeFive.text = j5
        selectedJokeSix.text = j6
        selectedJokeSeven.text = j7
        selectedJokeEight.text = j8
       selectedJokeNine.text = j9
        selectedJokeTen.text = j10
        finalScore.text = finalResult

       
    }
    
   
    
    

}//end class
