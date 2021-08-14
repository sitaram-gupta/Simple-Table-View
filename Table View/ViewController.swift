//
//  ViewController.swift
//  Table View
//
//  Created by Sitaram Gupta on 8/13/21.
//

import UIKit
 
class ViewController: UIViewController {

    var animals:[String]=["Cat", "Tiger","Horse","Dog","Cow","Cat", "Tiger","Horse","Dog","Cow","Cat", "Tiger","Horse","Dog","Cow","Cat", "Tiger","Horse","Dog","Cow"]
    @IBOutlet weak var animalsTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        animalsTableView.delegate = self
        animalsTableView.dataSource = self
    }
}

extension ViewController : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let name: String = animals[indexPath.row]
        print("You selected the animal called "+name)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = animalsTableView.dequeueReusableCell(withIdentifier: "animal_cell")!
        
        cell.textLabel?.text = animals[indexPath.row]
        return cell
    }
}
