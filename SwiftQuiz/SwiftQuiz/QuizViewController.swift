//
//  QuizViewController.swift
//  SwiftQuiz
//
//  Created by Henrico Lazuroz on 24/06/20.
//  Copyright © 2020 Henrico Lazuroz. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {
    
    
    @IBOutlet weak var viTimer: UIView!
    @IBOutlet weak var lbQuestion: UILabel!
    @IBOutlet var btAnswers: [UIButton]!
    
    var quizManager: QuizManager!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.quizManager = QuizManager()
        
        viTimer.frame.size.width = view.frame.size.width
        UIView.animate(withDuration: 25.0, delay: 0, options: .curveLinear, animations: {
            self.viTimer.frame.size.width = 0
        }) { (sucess) in
            self.showResults()
        }
        
        getNewQuiz()
    }
    
    func getNewQuiz() {
        quizManager.refreshQuiz()
        if quizManager.options == [] {
            viTimer.frame.size.width = view.frame.size.width
            showResults()
        } else {
            lbQuestion.text = quizManager.question
            for i in 0..<quizManager.options.count {
                let option = quizManager.options[i]
                let button = btAnswers[i]
                button.setTitle(option, for: .normal)
            }
        }
    }
    
    func showResults() {
        performSegue(withIdentifier: "resultSegue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultViewController = segue.destination as! ResultViewController
        resultViewController.totalAnswers = quizManager.totalAnswers
        resultViewController.totalCorrectAnswers = quizManager.totalCorrectAnswers
    }
    
    @IBAction func selectAnswer(_ sender: UIButton) {
        let index = btAnswers.firstIndex(of: sender)!
        quizManager.validateAnswer(index: index)
        getNewQuiz()
    }
    
}
