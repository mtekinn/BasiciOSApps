//
//  ViewController.swift
//  P1
//
//  Created by Mehmet Tekin on 21.12.2023.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var textLabel: UILabel!
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.layer.cornerRadius = .maximum(50, 50)
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        imageView.backgroundColor = generateRandomColor()
        counter += 1
        textLabel.text = String(counter)
    }
    
    func generateRandomColor() -> UIColor {
        let redValue = CGFloat.random(in: 0...1)
        let greenValue = CGFloat.random(in: 0...1)
        let blueValue = CGFloat.random(in: 0...1)
        
        let randomColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1.0)
        
        return randomColor
    }
    
}

