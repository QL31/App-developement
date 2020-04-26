//
//  ViewController.swift
//  view Change
//
//  Created by li qinglian on 23/04/2020.
//  Copyright © 2020 li qinglian. All rights reserved.
//

import UIKit

class ViewController: UIViewController,canReciveDelegate {
    
    var dataBack :String?

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var labelF: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //labelF.text=dataBack
    }

    @IBAction func changeBackG(_ sender: Any) {
        
        view.backgroundColor=UIColor.red
    }
    
    
    @IBAction func buttonPressed(_ sender: Any) {
        
        performSegue(withIdentifier: "goToSecondView", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSecondView"{
            
            let destinationVC=segue.destination as! SecondViewController
            
            destinationVC.data=textField.text!
            
            destinationVC.delegate=self
        }
    }
    
    func canReciveData(data: String){
        
        labelF.text=data
        
    }
}

