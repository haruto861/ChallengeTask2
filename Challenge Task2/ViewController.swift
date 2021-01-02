//
//  ViewController.swift
//  Challenge Task2
//
//  Created by 松島悠人 on 2021/01/02.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    
    @IBOutlet weak var SegmentedControl: UISegmentedControl!
    
  
    @IBOutlet weak var Label: UILabel!
    
    @IBOutlet weak var calculator: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    
    
    
    @IBAction func ValueChanged(_ sender: Any) {
        

    }
    
    
    @IBAction func didTapButton(_ sender: Any) {
        
        var number1 = Int(textField1.text ?? "") ?? 0
        var number2 = Int(textField2.text ?? "") ?? 0

    
        if SegmentedControl.selectedSegmentIndex == 0 {
            
            let totalNumber = number1 + number2
            
            Label.text = String(totalNumber)
           
            
        } else if SegmentedControl.selectedSegmentIndex == 1 {
            
            let totalNumber = number1 - number2
            
            Label.text = String(totalNumber)
            
        } else if SegmentedControl.selectedSegmentIndex == 2 {
            
            
            let totalNumber = number1 * number2
            
            Label.text = String(totalNumber)
            
        } else if SegmentedControl.selectedSegmentIndex == 3 {
        
            if number2 == 0 {
                
                //アラートのタイトル
                let dialog = UIAlertController(title: "エラー", message: "0で割ることはできません", preferredStyle: .alert)
                //ボタンのタイトル
                dialog.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                //実際に表示させる
                self.present(dialog, animated: true, completion: nil)
                
            } else {
                                
                let totalNumber = number1 / number2
                
                Label.text = String(totalNumber)
                
                
            }
            

        
        }
        
    }
    
    
}

