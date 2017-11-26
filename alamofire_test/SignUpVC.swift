//
//  SignUpVC.swift
//  alamofire_test
//
//  Created by Emrah Kocabuga on 3.11.2017.
//  Copyright © 2017 Emrah Kocabuga. All rights reserved.
//

import UIKit
import Alamofire

class SignUpVC: UIViewController {

    @IBOutlet weak var nametext: UITextField!
    @IBOutlet weak var surnametext: UITextField!
    @IBOutlet weak var emailtext: UITextField!
    @IBOutlet weak var passwordtext: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSignUp2",
            let signUp2VC = segue.destination as? SignUp2VC,
            let user = sender as? User {

            signUp2VC.user = user
            
            print("kullanıcı bilgileri taşınıyor")
        }
    }
    
    @IBAction func SignUpButton(_ sender: Any) {
        if let userName = nametext.text,
            let userSurname = surnametext.text,
            let userEmail = emailtext.text,
            let userPassword = passwordtext.text {
            
            guard let userName = nametext.text,
            userName.count > 0 else {
            displayMyAlertMessage(userMessage: "Lütfen Adınızı Giriniz");
            return
            }

            guard let userSurname = surnametext.text,
            userSurname.count > 0  else {
            displayMyAlertMessage(userMessage: "Lütfen Soyadınızı Giriniz");
            return
            }

            guard let userEmail = emailtext.text,
            userEmail.count > 0   else {
            displayMyAlertMessage(userMessage: "Lütfen Emailinizi Giriniz");
            return
            }

            guard let userPassword = passwordtext.text,
            userPassword.count > 0   else {
            displayMyAlertMessage(userMessage: "Lütfen Şifrenizi Giriniz");
            return
            }
            
            let user = User(name: userName, surname: userSurname, email: userEmail, password: userPassword)
            self.performSegue(withIdentifier: "toSignUp2", sender: user)
            
            
        }

        }
    
//
//        print("sign in button tapped")
//
//        let userName = nametext.text;
//        let userSurname = surnametext.text;
//        let userEmail = emailtext.text;
//        let userPassword = passwordtext.text;
//
////        let params = [ "Name": nametext.text!,
////                       "Surname": surnametext.text!,
////                       "Email":emailtext.text!,
////                       "Password": passwordtext.text!,
////                       "CreatedDate": "10/12/1999",     ] as [String : Any]
////
//
//
//        // Check for empty fields
//        if ((userName?.isEmpty)! || (userSurname?.isEmpty)! || (userEmail?.isEmpty)! || (userPassword?.isEmpty)! )
//        {
//
//            // Display alert message
//
//            displayMyAlertMessage(userMessage: "Lütfen tüm boşlukları doldurun");
//
//            return;
//        }
//
//
//
////        Alamofire.request("http://oyungezegeni.net/emrahapi/api/users/register", method: .post, parameters: params, encoding: URLEncoding.default).responseString { (response) in
////
////            print(response);
//
// //   }
//
//            // Display alert message with confirmation.
////             let myAlert = UIAlertController(title:"Bilgi", message:"Kayıt Başarılı!. Teşekkürler", preferredStyle: UIAlertControllerStyle.alert);
////
////            let okAction = UIAlertAction(title:"Ok", style:UIAlertActionStyle.default){ action in
////                self.dismiss(animated: true, completion:nil);
////
////
////
////        }
//
////            myAlert.addAction(okAction);
////            self.present(myAlert, animated:true, completion:nil);
//
//
//
//        self.performSegue(withIdentifier: "toSignUp2", sender: nil)
//
//
//        }
        

    func displayMyAlertMessage(userMessage:String)
    {
        
        let myAlert = UIAlertController(title:"Bilgi", message:userMessage, preferredStyle: UIAlertControllerStyle.alert);
        
        let okAction = UIAlertAction(title:"OK", style:UIAlertActionStyle.cancel, handler:nil);
        
        myAlert.addAction(okAction);
        
        self.present(myAlert, animated: true, completion: nil)
        
        
    }

    
    @IBAction func cancelButton(_ sender: Any) {
        
        print("cancel button tapped")
        
        self.dismiss(animated: true, completion: nil)
        
    }
}


