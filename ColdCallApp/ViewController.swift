//
//  ViewController.swift
//  ColdCallApp
//
//  Created by admin on 05/12/2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var randNumLabel: UILabel!
    
    var namesArr = ["Vayne", "Draven", "Tristana", "Caitlyn", "Jhin", "Sivir", "Ezreal", "Lucian", "Twitch", "Kalista", "Jinx", "Miss Fortune", "Ashe"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randNumLabel.text = " "
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func myColdCallBtn(_ sender: UIButton) {
        
        let ran = namesArr.randomElement()
        myLabel.text = ran
        coloChoice()
        
//        for i in namesArr{
//            namesArr.shuffle()
//            myLabel.text = i
//        }
        

        
    }
    
    func coloChoice(){
        let randNum: Int =  Int.random(in: 1..<6)
        
        randNumLabel.text = String(randNum)
        
        switch randNum{
        case 1...2:
            randNumLabel.textColor = UIColor.red
        case 3...4:
            randNumLabel.textColor = UIColor.orange
        case 5:
            randNumLabel.textColor = UIColor.green
        default:
            randNumLabel.textColor = UIColor.black
        }
       

}
}
