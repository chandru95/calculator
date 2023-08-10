//
//  ViewController.swift
//  calculator
//
//  Created by Ragulkumar K V on 01/08/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var one: UIButton!
    @IBOutlet weak var two: UIButton!
    @IBOutlet weak var three: UIButton!
    @IBOutlet weak var four: UIButton!
    @IBOutlet weak var five: UIButton!
    @IBOutlet weak var six: UIButton!
    @IBOutlet weak var seven: UIButton!
    @IBOutlet weak var eight: UIButton!
    @IBOutlet weak var nine: UIButton!
    @IBOutlet weak var zero: UIButton!
    @IBOutlet weak var plus: UIButton!
    @IBOutlet weak var minus: UIButton!
    @IBOutlet weak var multiply: UIButton!
    @IBOutlet weak var division: UIButton!
    @IBOutlet weak var equal: UIButton!
    @IBOutlet weak var clear: UIButton!
    
    var firstvalue: String?
    var secondvalue: String?
    var symbol = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = ""
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func numberbutton(_ sender: UIButton) {
        let a = label.text!
        print(a)
        
        if sender.tag == 11{
            label.text = a+"1"
        }
        else if sender.tag == 12{
            label.text = a+"2"
        }
        else if sender.tag == 13{
            label.text = a+"3"
        }
        else if sender.tag == 14{
            label.text = a+"4"
        }
        else if sender.tag == 15{
            label.text = a+"5"
        }
        else if sender.tag == 16{
            label.text = a+"6"
        }
        else if sender.tag == 17{
            label.text = a+"7"
        }
        else if sender.tag == 18{
            label.text = a+"8"
        }
        else if sender.tag == 19{
            label.text = a+"9"
        }
        else if sender.tag == 20{
            label.text = a+"0"
        }
    }
    
    
    @IBAction func operatorbutton(_ sender: UIButton) {
        
        if sender.tag == 100{
            symbol = "+"
        }
        if sender.tag == 200{
            symbol = "-"
        }
        if sender.tag == 300{
            symbol = "*"
        }
        if sender.tag == 400{
            symbol = "/"
        }
        
        firstvalue = label.text
        label.text = ""
        
    }
    
    @IBAction func equal(_ sender: UIButton){
        secondvalue = label.text
        label.text = ""
        if symbol == "+"{
            let result = Int(firstvalue!)! + Int(secondvalue!)!
            label.text = String(result)
        }
        else if symbol == "-"{
            let result = Int(firstvalue!)! - Int(secondvalue!)!
            label.text = String(result)
            
        }
        else if symbol == "*"{
            let result = Int(firstvalue!)! * Int(secondvalue!)!
            label.text = String(result)
            
        }
        else if symbol == "/"{
            let result = Int(firstvalue!)! / Int(secondvalue!)!
            label.text = String(result)
            
            
        }
        
        
        
    }
    
    @IBAction func clear(_ sender: Any) {
        label.text = ""
    }
}
