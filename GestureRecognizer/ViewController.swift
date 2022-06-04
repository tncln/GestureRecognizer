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
    var isJames = true
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.isUserInteractionEnabled = true //resmin tıklanabilir olup olmamasını sağlar
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        
        imageView.addGestureRecognizer(gestureRecognizer)
        
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

