//
//  ViewController.swift
//  Data Passing Using Delegate
//
//  Created by Sharetrip-iOS on 11/08/2021.
//

import UIKit

class ViewController: UIViewController,DataPassing {
    
    //MARK:- Properties
    
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var addressLbl: UILabel!
    
    
    //MARK:- Init
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    
    //MARK:- Handlers
    @IBAction func nextVCBtnAction(_ sender: Any) {
        
        let secondVC = self.storyboard?.instantiateViewController(withIdentifier: SecondViewController.identifer) as! SecondViewController
        secondVC.delegate = self
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
    
    
    func passData(name: String, address: String) {
        self.nameLbl.text = name
        self.addressLbl.text = address
    }
    
    

}

