//
//  ViewController.swift
//  FunnyNumber_16dec18
//
//  Created by MasterUNG on 16/12/2561 BE.
//  Copyright © 2561 MasterUNG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//    Explicit
    var labelButton = ["Back Button", "Zero Button", "Next Button"]
    var objMyClass = MyClass()
    
    
    
    
    
    
    
    @IBOutlet weak var numberLabel: UILabel!
    
    
    
    @IBAction func backButton(_ sender: Any) {
        
        showLog(indexInt: 0)
        numberLabel.text = objMyClass.backProcess(currentInt: findCurrentNumber())
        
    }
    
    
    @IBAction func zeroButton(_ sender: Any) {
        
        showLog(indexInt: 1)
        numberLabel.text = "0"
        
    }
    
    
    @IBAction func nextButton(_ sender: Any) {
        
        showLog(indexInt: 2)
        numberLabel.text = objMyClass.nextProcess(currentInt: findCurrentNumber())
        
    }
    
    func showLog(indexInt: Int) -> Void {
        print("You Click ==> \(labelButton[indexInt])")
    }
    
    func findCurrentNumber() -> Int {
       
        let resultString: String = numberLabel.text!
        
        let result: Int = Int(resultString)!
        
        return result
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

