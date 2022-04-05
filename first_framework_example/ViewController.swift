//
//  ViewController.swift
//  first_framework_example
//
//  Created by Tareq on 30/3/22.
//

import UIKit
import first_framework
class ViewController: UIViewController {

    @IBAction func next(_ sender: Any) {
       
        print( SecretManager(key: "12345").readSecret())
          SecretManager(key: "12345").presentHomeAsModalRoot(self)
        

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
       print( SecretManager(key: "1234").readSecret())
        
        
     //        self.navigationController?.pushViewController(ViewController: View, animated: true)
    }


}

