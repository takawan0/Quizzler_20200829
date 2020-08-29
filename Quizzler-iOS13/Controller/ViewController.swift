//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    
   
    var quizNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // updateUI()
        
        progressBar.progress = 0.0

    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle
        let actualAnswer  = quiz[quizNumber].answer
        
   
  
        
        if userAnswer == actualAnswer {
            sender.backgroundColor = UIColor.green
        }else{
            sender.backgroundColor = UIColor.red
        }
        
        
        if quizNumber + 1 < 12 {
            quizNumber += 1
            
       
            
        }else{quizNumber = 0}
        
        Timer.scheduledTimer(timeInterval: 0.2, target:self, selector: #selector(updateUI), userInfo:nil, repeats: false)
        
        
    }
    
    @objc func updateUI(){
        questionLabel.text = quiz[quizNumber].text
        trueButton.backgroundColor = UIColor.clear
          falseButton.backgroundColor = UIColor.clear
        progressBar.progress = Float(quizNumber + 1) / Float(quiz.count)

    }
    
    
    
}

