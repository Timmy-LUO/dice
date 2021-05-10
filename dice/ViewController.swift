//
//  ViewController.swift
//  dice
//
//  Created by 羅承志 on 2021/4/28.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dice1ImageView: UIImageView!
    @IBOutlet weak var dice2ImageView: UIImageView!
    @IBOutlet weak var dice3ImageView: UIImageView!
    @IBOutlet weak var dice4ImageView: UIImageView!
    @IBOutlet weak var dice5ImageView: UIImageView!
    @IBOutlet weak var dice6ImageView: UIImageView!
    @IBOutlet weak var scoreALabel: UILabel!
    @IBOutlet weak var scoreBLabel: UILabel!
    @IBOutlet weak var rollButton: UIButton!
    @IBOutlet weak var totalScoreLabel: UILabel!

    //使用array依序產出骰子點數圖片
    let diceImages = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    //定義骰子總和數數字
    var scoreAResult = 0
    var scoreBResult = 0
    var totalScoreResult = 0
    var sum = 0

    //使圖片亂數生成
    func diceRandom() {
        dice1ImageView.image = UIImage(named: diceImages.randomElement()!)
        dice2ImageView.image = UIImage(named: diceImages.randomElement()!)
        dice3ImageView.image = UIImage(named: diceImages.randomElement()!)
        dice4ImageView.image = UIImage(named: diceImages.randomElement()!)
        dice5ImageView.image = UIImage(named: diceImages.randomElement()!)
        dice6ImageView.image = UIImage(named: diceImages.randomElement()!)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func rollButton(_ sender: UIButton) {
        //將骰子總和在func裡為0（當每次點下Button骰子總和都將從0開始）
        scoreAResult = 0
        scoreBResult = 0
        
        //骰子圖片亂數顯示
        diceRandom()
                
        //設定骰子圖片對應點數dice1（總共六顆骰子，需分別設定六顆骰子對應分數）
        if dice1ImageView.image == UIImage(named: diceImages[0]) {
            scoreAResult += 1
            scoreALabel.text = "\(scoreAResult)"
        } else if dice1ImageView.image == UIImage(named: diceImages[1]) {
            scoreAResult += 2
            scoreALabel.text = "\(scoreAResult)"
        } else if dice1ImageView.image == UIImage(named: diceImages[2]) {
            scoreAResult += 3
            scoreALabel.text = "\(scoreAResult)"
        } else if dice1ImageView.image == UIImage(named: diceImages[3]) {
            scoreAResult += 4
            scoreALabel.text = "\(scoreAResult)"
        } else if dice1ImageView.image == UIImage(named: diceImages[4]) {
            scoreAResult += 5
            scoreALabel.text = "\(scoreAResult)"
        } else if dice1ImageView.image == UIImage(named: diceImages[5]) {
            scoreAResult += 6
            scoreALabel.text = "\(scoreAResult)"
        }
        
        //設定骰子圖片對應點數dice2
        if dice2ImageView.image == UIImage(named: diceImages[0]) {
            scoreAResult += 1
            scoreALabel.text = "\(scoreAResult)"
        } else if dice2ImageView.image == UIImage(named: diceImages[1]) {
            scoreAResult += 2
            scoreALabel.text = "\(scoreAResult)"
        } else if dice2ImageView.image == UIImage(named: diceImages[2]) {
            scoreAResult += 3
            scoreALabel.text = "\(scoreAResult)"
        } else if dice2ImageView.image == UIImage(named: diceImages[3]) {            scoreAResult += 4
            scoreALabel.text = "\(scoreAResult)"
        } else if dice2ImageView.image == UIImage(named: diceImages[4]) {
            scoreAResult += 5
            scoreALabel.text = "\(scoreAResult)"
        } else if dice2ImageView.image == UIImage(named: diceImages[5]) {
            scoreAResult += 6
            scoreALabel.text = "\(scoreAResult)"
        }
        
        //設定骰子圖片對應點數dice3
        if dice3ImageView.image == UIImage(named: diceImages[0]) {
            scoreAResult += 1
            scoreALabel.text = "\(scoreAResult)"
        } else if dice3ImageView.image == UIImage(named: diceImages[1]) {
            scoreAResult += 2
            scoreALabel.text = "\(scoreAResult)"
        } else if dice3ImageView.image == UIImage(named: diceImages[2]) {
            scoreAResult += 3
            scoreALabel.text = "\(scoreAResult)"
        } else if dice3ImageView.image == UIImage(named: diceImages[3]) {
            scoreAResult += 4
            scoreALabel.text = "\(scoreAResult)"
        } else if dice3ImageView.image == UIImage(named: diceImages[4]) {
            scoreAResult += 5
            scoreALabel.text = "\(scoreAResult)"
        } else if dice3ImageView.image == UIImage(named: diceImages[5]) {
            scoreAResult += 6
            scoreALabel.text = "\(scoreAResult)"
        }
        
        //設定骰子圖片對應點數dice4
        if dice4ImageView.image == UIImage(named: diceImages[0]) {
            scoreBResult += 1
            scoreBLabel.text = "\(scoreBResult)"
        } else if dice4ImageView.image == UIImage(named: diceImages[1]) {
            scoreBResult += 2
            scoreBLabel.text = "\(scoreBResult)"
        } else if dice4ImageView.image == UIImage(named: diceImages[2]) {
            scoreBResult += 3
            scoreBLabel.text = "\(scoreBResult)"
        } else if dice4ImageView.image == UIImage(named: diceImages[3]) {
            scoreBResult += 4
            scoreBLabel.text = "\(scoreBResult)"
        } else if dice4ImageView.image == UIImage(named: diceImages[4]) {
            scoreBResult += 5
            scoreBLabel.text = "\(scoreBResult)"
        } else if dice4ImageView.image == UIImage(named: diceImages[5]) {
            scoreBResult += 6
            scoreBLabel.text = "\(scoreBResult)"
        }
        
        //設定骰子圖片對應點數dice5
        if dice5ImageView.image == UIImage(named: diceImages[0]) {
            scoreBResult += 1
            scoreBLabel.text = "\(scoreBResult)"
        } else if dice5ImageView.image == UIImage(named: diceImages[1]) {
            scoreBResult += 2
            scoreBLabel.text = "\(scoreBResult)"
        } else if dice5ImageView.image == UIImage(named: diceImages[2]) {
            scoreBResult += 3
            scoreBLabel.text = "\(scoreBResult)"
        } else if dice5ImageView.image == UIImage(named: diceImages[3]) {
            scoreBResult += 4
            scoreBLabel.text = "\(scoreBResult)"
        } else if dice5ImageView.image == UIImage(named: diceImages[4]) {
            scoreBResult += 5
            scoreBLabel.text = "\(scoreBResult)"
        } else if dice5ImageView.image == UIImage(named: diceImages[5]) {
            scoreBResult += 6
            scoreBLabel.text = "\(scoreBResult)"
        }
        
        //設定骰子圖片對應點數dice6
        if dice6ImageView.image == UIImage(named: diceImages[0]) {
            scoreBResult += 1
            scoreBLabel.text = "\(scoreBResult)"
        } else if dice6ImageView.image == UIImage(named: diceImages[1]) {
            scoreBResult += 2
            scoreBLabel.text = "\(scoreBResult)"
        } else if dice6ImageView.image == UIImage(named: diceImages[2]) {
            scoreBResult += 3
            scoreBLabel.text = "\(scoreBResult)"
        } else if dice6ImageView.image == UIImage(named: diceImages[3]) {
            scoreBResult += 4
            scoreBLabel.text = "\(scoreBResult)"
        } else if dice6ImageView.image == UIImage(named: diceImages[4]) {
            scoreBResult += 5
            scoreBLabel.text = "\(scoreBResult)"
        } else if dice6ImageView.image == UIImage(named: diceImages[5]) {
            scoreBResult += 6
            scoreBLabel.text = "\(scoreBResult)"
        }
        sum = scoreAResult + scoreBResult
        totalScoreLabel.text = "Total：\(sum)"
        totalScoreLabel.sizeToFit()
    }
}

