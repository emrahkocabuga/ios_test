//
//  SignUp2VC.swift
//  alamofire_test
//
//  Created by Emrah Kocabuga on 3.11.2017.
//  Copyright © 2017 Emrah Kocabuga. All rights reserved.
//

import UIKit
import Alamofire

class SignUp2VC: UIViewController {
    
    @IBOutlet weak var facebooktext: UITextField!
    @IBOutlet weak var twittertext: UITextField!
    @IBOutlet weak var instagramtext: UITextField!
    @IBOutlet weak var githubtext: UITextField!
    
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        print("\(user.name) \(user.surname) - \(user.email) - \(user.password)")
    }
    
    
    @IBAction func submit2(_ sender: Any) {
    
    
        user.facebookLink = facebooktext.text
        user.twitterLink = twittertext.text
        user.instragramLink = instagramtext.text
        user.githubLink = githubtext.text
        
        
        let facebookAddress = facebooktext.text
        let twitterAddress = twittertext.text
        let instagramAddress = instagramtext.text
        let githubAddress = githubtext.text
        
        let params: [String: Any] =
            ["Name": user.name,
            "Surname" : user.surname,
            "Email" : user.email,
            "Password": user.password,
            "FacebookUrl" : user.facebookLink,
            "UrlTwitter" : user.twitterLink,
            "UrlInstragram" : user.instragramLink,
            "UrlGithub" : user.githubLink,
            "CreatedDate": "10/12/1999",   ]
        
        
//        let params = [ "FacebookUrl": facebookAddress as Any,
//                       "UrlTwitter": twitterAddress as Any,
//                       "UrlInstagram":instagramAddress as Any,
//                       "UrlGithub": githubAddress as Any,
//                       "CreatedDate": "10/12/1999",     ] as [String : Any]
        

        Alamofire.request("http://oyungezegeni.net/emrahapi/api/users/register", method: .post, parameters: params, encoding: URLEncoding.default).responseString { (response) in
            
            print(response);
            
            
        }
        
        // Display alert message with confirmation.
        let myAlert = UIAlertController(title:"Bilgi", message:"Kayıt Başarılı!. Teşekkürler", preferredStyle: UIAlertControllerStyle.alert);
        
        let okAction = UIAlertAction(title:"Ok", style:UIAlertActionStyle.default){ action in
 
           // self.performSegue(withIdentifier: "toFeed2", sender: nil)
        }
        
        myAlert.addAction(okAction);
        self.present(myAlert, animated:true, completion:nil);



    }

    @IBAction func cancel2(_ sender: Any) {
        
        print("cancel button tapped")
        
        self.dismiss(animated: true, completion: nil)
    }
    
    
}







