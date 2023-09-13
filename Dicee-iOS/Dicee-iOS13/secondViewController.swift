//
//  secondViewController.swift
//  Dicee-iOS13
//
//  Created by Vivek Patel on 2023-05-17.
//  Copyright © 2023 London App Brewery. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {

    @IBOutlet weak var diceOneImage: UIImageView!
    
    @IBOutlet weak var diceTwoImage: UIImageView!
    let diceArray = [UIImage(named: "DiceOne")!,UIImage(named: "DiceTwo")!,UIImage(named: "DiceThree")!,UIImage(named: "DiceFour")!,UIImage(named: "DiceFive")!,UIImage(named: "DiceSix")!]
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
  
    @IBAction func tryLuckTouchUpInside(_ sender: Any) {
        diceOneImage.image = diceArray.randomElement()
        diceTwoImage.image = diceArray.randomElement()
    
    }
}
