//
//  SignUp3VC.swift
//  alamofire_test
//
//  Created by Emrah Kocabuga on 9.11.2017.
//  Copyright © 2017 Emrah Kocabuga. All rights reserved.
//

import UIKit

class FeedVC: UIViewController, UIPopoverPresentationControllerDelegate{
   
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func logout(_ sender: Any) {
        
        UserDefaults.standard.removeObject(forKey: "user")
        UserDefaults.standard.synchronize()
        
        let SignIn = self.storyboard?.instantiateViewController(withIdentifier: "SignInVC") as! SignInVC
        let delegate : AppDelegate = UIApplication.shared.delegate as! AppDelegate
        delegate.window?.rootViewController = SignIn
        
    }
            
            override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                
                if segue.identifier == "addbutton" {
                    
                    let popoverViewController = segue.destination
                    popoverViewController.preferredContentSize = CGSize(width: 150, height: 550);
                    popoverViewController.modalPresentationStyle = UIModalPresentationStyle.popover
                    popoverViewController.popoverPresentationController!.delegate = self
                    
                }
                
            }
            
            func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
                return UIModalPresentationStyle.none
            }
            
        }
        

    
