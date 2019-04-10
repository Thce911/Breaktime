//
//  ViewController.swift
//  BreakTime
//
//  Created by DCT on 4/7/19.
//  Copyright © 2019 DevCrew. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    var score1 = 0
    var score2 = 0
   
    @IBOutlet weak var substracttwobtn: UIButton!
    @IBOutlet weak var addtwobtn: UIButton!
    @IBOutlet weak var twoscrlbl: UILabel!
    @IBOutlet weak var substractonebtn: UIButton!
    @IBOutlet weak var onescrlbl: UILabel!
    @IBOutlet weak var addonebtn: UIButton!
    @IBOutlet weak var Reset: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBAction func addonebtn(_ sender: Any) {
        score1 += 1
        onescrlbl.text = String(score1)
        isMatchpoint(scoreA: score1, scoreB: score2)
        
    }
    
    @IBAction func substractonebtn(_ sender: Any) {
        score1 -= 1
        onescrlbl.text = String(score1)
    }
    @IBAction func addtwobtn(_ sender: Any) {
        score2 += 1
        twoscrlbl.text = String(score2)
        isMatchpoint(scoreA: score1, scoreB: score2)
        
    }
    @IBAction func substracttwobtn(_ sender: Any) {
        score2 -= 1
        twoscrlbl.text = String(score2)
    }
    
    @IBAction func Reset(_ sender: Any) {
        score1 = 0
        score2 = 0
        onescrlbl.text = String(score1)
        twoscrlbl.text = String(score2)
    }
    
    func isMatchpoint(scoreA: Int, scoreB: Int){
        if scoreA >= 9 && scoreB >= 9{
            if scoreA - scoreB != 0 {
                let alert = UIAlertController(title: "Matchpoint!", message: "Tienes 4 saques", preferredStyle: UIAlertController.Style.alert)
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
            }
            
            if scoreA == scoreB{
                let alert = UIAlertController(title: "Duce", message: "Que nervios", preferredStyle: UIAlertController.Style.alert)
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
                
            }
        }
        
    }
    
    
}

