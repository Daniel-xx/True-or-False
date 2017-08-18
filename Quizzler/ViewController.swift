//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright © 2017 Daniel Travers. All rights reserved.

//

import UIKit
import ProgressHUD
import GoogleMobileAds
import AVFoundation

class ViewController: UIViewController {
    
    //Place your instance variables here
    
    let allQuestions = QuestionBank()
    var pickedAnswer = false
    var questionNumber = 0
    var score = 0
    
    var bannerView: GADBannerView!
    
    let defaults = UserDefaults.standard
    
    var audioPlayer = AVAudioPlayer()
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        questionNumber = defaults.integer(forKey: "questionNumber")
        score = defaults.integer(forKey: "score")
        
        nextQuestion()
        updateUI()
        
        bannerView = GADBannerView(adSize: kGADAdSizeFullBanner)
        self.view.addSubview(bannerView)
        bannerView.frame = CGRect(x: 0.0,
                                  y: UIApplication.shared.statusBarFrame.size.height,
                                  width: bannerView.frame.width,
                                  height: bannerView.frame.height)
        bannerView.adUnitID = "ca-app-pub-6962486061492477/2112150261"
        bannerView.rootViewController = self
        bannerView.load(GADRequest())
        }


    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1 {
            pickedAnswer = true
        } else if sender.tag == 2 {
            pickedAnswer = false
        }
        checkAnswer()
        questionNumber = questionNumber + 1
        nextQuestion()
    }
    
//    MUST CHANGE ALL NUMBERS TO MATCH Q'S AMMOUNT
    func updateUI() {
      scoreLabel.text = "Score: \(score)"
        progressLabel.text = "\(questionNumber + 1) / 41"
        defaults.set(questionNumber, forKey: "questionNumber")
        defaults.set(score, forKey: "score")
        progressBar.frame.size.width = (view.frame.size.width / 41) * CGFloat(questionNumber + 1)
        
    }
    
//    MUST CHANGE Q NUMBER TO -1 OF NUMBER OF QUESTIONS
    func nextQuestion() {
        if questionNumber <= 40 {
        questionLabel.text = allQuestions.list[questionNumber].questionText
            updateUI()
        } else {
            
            let alert = UIAlertController(title: "WOW", message: "You know your stuff! We're out of questions but you can begin again?", preferredStyle: .alert)
            
            let restartAction = UIAlertAction(title: "Restart at 0", style: .default, handler: { (UIAlertAction) in
                self.startOver()
                
            })
            
            alert.addAction(restartAction)
            
            present(alert, animated: true, completion: nil)
            
        }
    }
    
    
    
    func checkAnswer() {
        let correctAnswer = allQuestions.list[questionNumber].answer
        
        if correctAnswer == pickedAnswer {
            let buttonSound = NSURL(fileURLWithPath: Bundle.main.path(forResource: "done", ofType: "wav")!)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: buttonSound as URL)
                audioPlayer.prepareToPlay()
            } catch {
                print("Problem in getting File")
            }
            audioPlayer.play()

            ProgressHUD.showSuccess("Correct!")
            score += 1
            view.backgroundColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
            print("You got it")
            
        } else {
            let buttonSound = NSURL(fileURLWithPath: Bundle.main.path(forResource: "click", ofType: "wav")!)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: buttonSound as URL)
                audioPlayer.prepareToPlay()
            } catch {
                print("Problem in getting File")
            }
            audioPlayer.play()

            ProgressHUD.showError("Wrong!")
            print("dude ... no")
            view.backgroundColor = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
        }

    }
    
    
    func startOver() {
       questionNumber = 0
        score = 0
        nextQuestion()
    }
    


    
}
