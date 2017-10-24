//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Juan Tenezaca on 10/22/17.
//  Copyright © 2017 Juan Tenezaca. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var thetableView: UITableView!
    
    
    var emojis = ["👺","👿","🤖","👻","👾","🍆"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // this is where it asks questions on how many things will need to go into the tableview
        thetableView.dataSource = self
        thetableView.delegate = self
        
    }

    //  How many rows do you want
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    //  What you want inside of your row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = emojis[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "MoveSegue", sender: emoji)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! String
    } //!
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

