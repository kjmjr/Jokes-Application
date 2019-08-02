//
//  HomeViewController.swift
//  JokesApp
//
//  Created by kevin mcadoo on 4/20/19.
//  Copyright © 2019 Apple Inc. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    var Jokes: NSArray = NSArray()
    var Scores: NSArray = NSArray()
    
    var randomScore: Int = 0
    var randomJoke: Int = 0
    //var text: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let jokesArray : JokesDataFile = JokesDataFile()
        Jokes = jokesArray.JokesList
        
        randomize()
        
        JokesTextView.allowsEditingTextAttributes = false
        
        
        
    }//end override func
    
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
    }//end override

    
    @IBOutlet weak var JokesTextView: UITextView!
    
    
    @IBAction func dismissKeyboard(_ sender: UITapGestureRecognizer) {
        
        JokesTextView.resignFirstResponder()
    }
    
    @IBOutlet weak var ScoreVar: UIButton!
    
  
    @IBOutlet weak var SkipVar: UIButton!
    
   
    

  
    
    @IBAction func ScoreFunction(_ sender: Any) {
        
        
       passJokes()
      
        
        
    }//end action func
    
    
    
    @IBAction func SkipFunction(_ sender: Any) {
        
        randomize()
    }//end action func
    
    
    
    func passJokes(){
        
       
       
        let jOne = self.tabBarController?.viewControllers![1] as! ResultViewController
        
        jOne.j1 = JokesTextView.text!
        
       
        let JTwo = self.tabBarController?.viewControllers![1] as! ResultViewController
        
        JTwo.j2 = JokesTextView.text!
        
    
        
         let JThree = self.tabBarController?.viewControllers![1] as! ResultViewController
        
         JThree.j3 = JokesTextView.text!
        
         let JFour = self.tabBarController?.viewControllers![1] as! ResultViewController
        
         JFour.j4 = JokesTextView.text!
        
         let JFive = self.tabBarController?.viewControllers![1] as! ResultViewController
        
         JFive.j5 = JokesTextView.text!
        
         let JSix = self.tabBarController?.viewControllers![1] as! ResultViewController
        
         JSix.j6 = JokesTextView.text!
        
         let JSeven = self.tabBarController?.viewControllers![1] as! ResultViewController
        
         JSeven.j7 = JokesTextView.text!
        
         let JEight = self.tabBarController?.viewControllers![1] as! ResultViewController
        
         JEight.j8 = JokesTextView.text!
 
         let JNine = self.tabBarController?.viewControllers![1] as! ResultViewController
        
         JNine.j9 = JokesTextView.text!
        
         let JTen = self.tabBarController?.viewControllers![1] as! ResultViewController
        
         JTen.j10 = JokesTextView.text!
        
        
    }//end function
     
    func randomize(){
        
        
        randomJoke = Int(arc4random_uniform(UInt32(Jokes.count)))
        JokesTextView.text = "\(Jokes[randomJoke])"
        
    }//end unc

    
    
    func getRandomScore(){
        
        let scoresArray: ScoresDataFile = ScoresDataFile()
        Scores = scoresArray.scoresList
        
        randomScore = Int(arc4random_uniform(UInt32(Scores.count)))
        
        // let score = self.tabBarController?.viewControllers![1] as! ResultViewController
        
        //score.finalResult = Scores[randomScore] as! String
    }//end func
    
    

}//end class
