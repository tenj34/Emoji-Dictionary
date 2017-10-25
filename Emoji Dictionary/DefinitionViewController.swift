//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Juan Tenezaca on 10/23/17.
//  Copyright © 2017 Juan Tenezaca. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    var emoji  = Emoji()
    
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var birthYearLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojiLabel.text = emoji.stringEmoji
        birthYearLabel.text = "Birthyear: \(emoji.birthyear)"
        categoryLabel.text = "Category: \(emoji.category)"
        definitionLabel.text = emoji.defintion
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
