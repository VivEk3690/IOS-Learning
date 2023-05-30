

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblQuestion: UILabel!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var btnOption1: UIButton!
    
 
    @IBOutlet weak var btnOption2: UIButton!
    
    @IBOutlet weak var btnOption3: UIButton!
    
    @IBOutlet weak var lblScore: UILabel!
    var questionProvider = QuestionProvider()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnAnswerPressed(_ sender : UIButton){
        
        let answer = sender.currentTitle!
        let answerIsRight = questionProvider.checkAnswer(answer)
        
        if answerIsRight{
            sender.backgroundColor = UIColor.green
        }else{
            sender.backgroundColor = UIColor.red
        }
        
        questionProvider.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI),userInfo: nil , repeats: false)
    }


    @objc func updateUI(){
        lblQuestion.text = questionProvider.getQuestion()
        progressBar.progress = questionProvider.getProgress()
        lblScore.text = "Score :\(questionProvider.getScore())"
        let multipalAnswer = questionProvider.getAnswers()
        btnOption1.setTitle(multipalAnswer[0], for: .normal)
        btnOption2.setTitle(multipalAnswer[1], for: .normal)
        btnOption3.setTitle(multipalAnswer[2], for: .normal)
        
        btnOption1.backgroundColor = UIColor.clear
        btnOption2.backgroundColor = UIColor.clear
        btnOption3.backgroundColor = UIColor.clear

     
    }
    
}

