//
//  ViewController.swift
//  Table View Demo
//
//  Created by Henry Doan on 6/10/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1000
    }
//    question would be since we are rending 1000, does it show all 1000 and if we scroll down does it keep it or throw it away and recall it.
    // it does a reusing cell item of if we are using it again and dequeue the cell until we need it
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = UITableViewCell()
        let cell = tableView.dequeueReusableCell(withIdentifier: "normalCell", for: indexPath)
        cell.textLabel?.text = "This is the cell for \(indexPath.row)"
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

