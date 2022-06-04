//
//  ViewController.swift
//  GestureRecognizer
//
//  Created by Adem Tunçalın on 4.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var myTimer: UILabel!
    var timer = Timer()
    var isJames = true
    var counter = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.isUserInteractionEnabled = true //resmin tıklanabilir olup olmamasını sağlar
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        
        imageView.addGestureRecognizer(gestureRecognizer)
        
        counter = 10
        myTimer.text = "time: \(counter)"
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunction), userInfo: nil, repeats: true)
        
    }
     
    @objc func timerFunction(){
        myTimer.text = "time : \(counter)"
        counter -= 1
        if counter == 0 {
            timer.invalidate() //timer ı durdurur
            myTimer.text = "time's over"
        }
    }
    @IBAction func buttonCliecked(_ sender: Any) {
        print("button click")
    }
    
    
    @objc func changePic(){
       
        
        if isJames == true {
            imageView.image = UIImage(named: "lars")
            myLabel.text = "Lars Ulrich"
            isJames = false
        } else {
            imageView.image = UIImage(named: "james")
            myLabel.text = "James Hetfield"
            isJames = true
            
        }
    }

}

