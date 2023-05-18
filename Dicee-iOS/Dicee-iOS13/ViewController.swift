
import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var leftSideDiceImage: UIImageView!
    @IBOutlet weak var rightSideDiceImage: UIImageView!
  
    @IBOutlet weak var logo: UIImageView!
 
    let diceArray = [UIImage(named: "DiceOne")!,UIImage(named: "DiceTwo")!,UIImage(named: "DiceThree")!,UIImage(named: "DiceFour")!,UIImage(named: "DiceFive")!,UIImage(named: "DiceSix")!]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    
    @IBAction func scrollBtnTouchUpInside(_ sender: Any) {
        leftSideDiceImage.image = diceArray.randomElement()
        rightSideDiceImage.image = diceArray.randomElement()
        
    }
    @IBAction func nextPageTouchUpInside(_ sender: Any) {
    
    }
    
}

