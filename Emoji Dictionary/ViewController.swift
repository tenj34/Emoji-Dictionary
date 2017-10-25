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
    
    
    var emojis : [Emoji] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // this is where it asks questions on how many things will need to go into the tableview
        thetableView.dataSource = self
        thetableView.delegate = self
        emojis = makeEmojiArray()
        
    }

    //  How many rows do you want
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    //  What you want inside of your row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "MoveSegue", sender: emoji)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    } //!
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func makeEmojiArray() -> [Emoji]{
        let emoji1 = Emoji()
        emoji1.stringEmoji = "👺"
        emoji1.birthyear = 2010
        emoji1.category = "Smiley"
        emoji1.defintion = "Demon Face"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "👿"
        emoji2.birthyear = 2012
        emoji2.category = "Smiley"
        emoji2.defintion = "Evil Face"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "🤖"
        emoji3.birthyear = 2011
        emoji3.category = "Smiley"
        emoji3.defintion = "Robot"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "🍆"
        emoji4.birthyear = 2011
        emoji4.category = "Food"
        emoji4.defintion = "Eggplant"
        
        return [emoji1,emoji2,emoji3,emoji4]


    }

}

