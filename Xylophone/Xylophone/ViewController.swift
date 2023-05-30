
import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player : AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func keyPressed(_ sender: UIButton) {
        
        playSound(sender.currentTitle!)
        
    }
    
    func playSound(_ trackName : String){
        let url = Bundle.main.url(forResource: trackName, withExtension: "wav")
         player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }

}

