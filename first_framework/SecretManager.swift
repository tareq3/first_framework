//
//  SecretManager.swift
//  first_framework
//
//  Created by Tareq on 30/3/22.
//

import Foundation
import UIKit
public class SecretManager{
    private var isAuthorized : Bool
    public init(key : String){
        isAuthorized = Approved.keys.contains(key) ? true : false
    }
    
    public func readSecret() ->String? {
        isAuthorized ? "I Love customFramework" : nil
    }
    
//    public func presentFirstViewControllerOn(_ viewController:UIViewController) {
//        let storyBoard : UIStoryboard = UIStoryboard(name: "HomeStoryboard", bundle:Bundle(identifier: "com.mti.first-framework"))
//        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "HomeVC") as! HomeViewController
//        viewController.present(nextViewController, animated:true, completion:nil)
//    }
    
    public func pushHome(_ viewController : UIViewController){
        viewController.navigationController?.pushViewController(HomeViewController(), animated: true)
     
    }
    
    public func presentHome(_ viewController : UIViewController){
        viewController.present(HomeViewController(), animated: true)
    
    }
    
    public func presentHomeAsModalRoot(_ viewController : UIViewController){
        let rootVC = HomeViewController()
        rootVC.title = "Welcome"
        let navVC = UINavigationController(rootViewController: rootVC)
        viewController.present(navVC, animated: true)
    
    }
    
   
    
    public func presentHomeWithNavigation(_ viewController : UIViewController){
        
        print("Present Home with Nav")
        let rootVC = HomeViewController()
        rootVC.title = "Welcome"
        let navVC = UINavigationController(rootViewController: rootVC)
        navVC.modalPresentationStyle = .fullScreen
        viewController.present(navVC, animated: true)
    
    }
    
    
}
private struct Approved{
    static let keys = ["12345","qwert"]
}




