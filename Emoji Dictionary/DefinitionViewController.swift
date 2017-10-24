//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Juan Tenezaca on 10/23/17.
//  Copyright © 2017 Juan Tenezaca. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

   var emoji  = "No emoji"
    
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojiLabel.text = emoji
        
        if emoji == "🍆"{
            definitionLabel.text = "Ayy"
        }
        
        else if emoji == "👺"{
            definitionLabel.text = "Devil Gang"
        }
        
        else if emoji == "👿"{
            definitionLabel.text = "Angry bois"
        }
        
        if emoji == "🤖"{
            definitionLabel.text = "Beep Boop Bop"
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
