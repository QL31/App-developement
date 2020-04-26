//
//  SecondViewController.swift
//  view Change
//
//  Created by li qinglian on 23/04/2020.
//  Copyright © 2020 li qinglian. All rights reserved.
//

import UIKit

protocol canReciveDelegate {
    
    func canReciveData(data: String)
    
}

class SecondViewController: UIViewController {
    
    var data: String=""
    
    var delegate : canReciveDelegate?
    
    @IBOutlet weak var secondTextField: UITextField!
    
    @IBOutlet weak var labelS: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        labelS.text=data
    }
    

    @IBAction func bottonPressed2(_ sender: Any) {
        
        delegate?.canReciveData(data:secondTextField.text!)
        dismiss(animated: true, completion: nil)
            
        }
        
        
        
        //performSegue(withIdentifier: "dataGoBack", sender: self)
    //}
    
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier=="dataGoBack"{
//
//            var dataBackVC=segue.destination as! ViewController
//
//            dataBackVC.dataBack=secondTextField.text!
//
//        }
//    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
