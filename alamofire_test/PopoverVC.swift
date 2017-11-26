//
//  PopoverVC.swift
//  alamofire_test
//
//  Created by Neşe on 26.11.2017.
//  Copyright © 2017 Emrah Kocabuga. All rights reserved.
//

import UIKit

class PopoverVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    let transportItems = ["facebook.png","instagram.png","twitter.png"]
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return transportItems.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "transportCell", for: indexPath)
        
        cell.textLabel?.text = transportItems[indexPath.row]
        
        let imageName = UIImage(named: transportItems[indexPath.row])
        cell.imageView?.image = imageName
        
        return cell
    

}
}
