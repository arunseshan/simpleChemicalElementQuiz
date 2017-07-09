//
//  ViewController.swift
//  ElementQuiz
//
//  Created by Arun Seshan on 07/07/17.
//  Copyright © 2017 Arun Seshan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var answerLabel: UILabel!
    
    let elementList = ["Carbon","Gold","Chlorine","Sodium"]
    
    var currentElementIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateElement()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateElement(){
        answerLabel.text = "What is it called?"
        let elementName = elementList[currentElementIndex]
        let image = UIImage(named: elementName)
        imageView.image = image
    }
    
    @IBAction func showAnswer(_ sender: UIButton) {
        answerLabel.text = elementList[currentElementIndex]
    }
    
    
    @IBAction func goToNextElement(_ sender: UIButton) {
        currentElementIndex += 1
        if currentElementIndex >= elementList.count{
            currentElementIndex = 0
        }
        updateElement()
    }

}

