//
//  SecondViewController.swift
//  Data Passing Using Delegate
//
//  Created by Sharetrip-iOS on 11/08/2021.
//

import UIKit

protocol DataPassing  {
    
    func passData(name :String,address : String)
   
}

class SecondViewController: UIViewController {
    

    //MARK: - Properties

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var addressTextField: UITextField!
    
    var delegate : DataPassing!
    
    
    
    static let identifer = "SecondViewController"
    
    //MARK: - Init
    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    
    
    
    //MARK:- Handler
    @IBAction func clickBtnAction(_ sender: Any) {
        
        guard let name = nameTextField.text else {
            return
        }
        guard let address = addressTextField.text  else {
            return
        }
        
        guard  name != "" , address != "" else {
            return
        }
        delegate.passData(name: name, address: address)
        self.navigationController?.popViewController(animated: true)
        
        
    
    }
    
   

}
