//
//  SignUp3VC.swift
//  alamofire_test
//
//  Created by Emrah Kocabuga on 9.11.2017.
//  Copyright © 2017 Emrah Kocabuga. All rights reserved.
//

import UIKit

class SignUp3VC: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()


        
        func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
            let alertController = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
            alertController.popoverPresentationController?.sourceView = view
            alertController.popoverPresentationController?.sourceRect = tableView.cellForRow(at: indexPath as IndexPath)!.frame
            alertController.addAction(UIAlertAction(title: "", style: .cancel, handler: { _ in
                self.tableView.deselectRowAtIndexPath(indexPath, animated: false)
                print("cancel")
            }))
            alertController.addAction(UIAlertAction(title: "Item1", style: .default, handler: { _ in
                self.tableView.deselectRowAtIndexPath(indexPath, animated: false)
                print("select item1")
            }))
            alertController.addAction(UIAlertAction(title: "Item2", style: .Default, handler: { _ in
                self.tableView.deselectRowAtIndexPath(indexPath, animated: false)
                print("select item2")
            }))
            alertController.addAction(UIAlertAction(title: "Item3", style: .Default, handler: { _ in
                self.tableView.deselectRowAtIndexPath(indexPath, animated: false)
                print("select item3")
            }))
            
            presentViewController(alertController, animated: false, completion: nil)
        }
}
}
