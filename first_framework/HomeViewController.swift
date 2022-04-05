//
//  HomeViewController.swift
//  first_framework
//
//  Created by Tareq on 1/4/22.
//

import UIKit

 class HomeViewController: UIViewController {

     @IBOutlet weak var dismissbtn: UIButton!
     
     @IBAction func onDismiss(_ sender: UIButton) {
         self.dismiss(animated: true)
     }
     
    init() {
        super.init(nibName: "HomeViewController", bundle: Bundle(for: HomeViewController.self))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
     override func viewDidLoad() {
        super.viewDidLoad()

         navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: self, action: #selector(dismissSelf))
       
         dismissbtn.addTarget(self, action: #selector(dismissSelf), for: .touchUpInside)
     
     }

     @objc private func dismissSelf(){
        print("close framework")
         self.dismiss(animated: true)
     }
   

}
