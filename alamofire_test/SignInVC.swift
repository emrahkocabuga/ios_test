//
//  ViewController.swift
//  alamofire_test
//
//  Created by Emrah Kocabuga on 2.11.2017.
//  Copyright © 2017 Emrah Kocabuga. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class SignInVC: UIViewController {

    @IBOutlet weak var emailtext: UITextField!
    @IBOutlet weak var passwordtext: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
  
    @IBAction func submit(_ sender: Any) {
        
        let parameters: Parameters = [
            "Email": emailtext.text!,
            "Password": passwordtext.text!,
            
            ] as [String:String]
        
        if emailtext.text != "" && passwordtext.text != "" {
            Alamofire.request("http://oyungezegeni.net/emrahapi/api/users/login", method: .post, parameters: parameters).responseJSON(completionHandler: { (response) in
                
              
                switch response.result {
                case .success(let data):
                    let json = JSON(data)
                    let girisBasariliMi = json["Success"].boolValue
                    debugPrint("Giriş başarılı mı?: \(girisBasariliMi)")
                    
                    if girisBasariliMi {
                        
                        self.performSegue(withIdentifier: "toFeed", sender: nil)
                        
                        debugPrint("Yeni sayfaya yönlendir")
                    }
                    else 
                    {
                        let alert = UIAlertController(title: "Hata", message:"Kullanıcı hesabı bulunamadı", preferredStyle:UIAlertControllerStyle.alert)
                        
                        let okButton = UIAlertAction(title: "OK", style:UIAlertActionStyle.cancel, handler: nil)
                        alert.addAction(okButton)
                        
                        self.present(alert, animated: true, completion: nil)
                        
                        
                        debugPrint("Hata verdir")
                    }
        
                case .failure(let error):
                    print("Request failed with error: \(error)")
                }

        }
    )}
}
       }
    


