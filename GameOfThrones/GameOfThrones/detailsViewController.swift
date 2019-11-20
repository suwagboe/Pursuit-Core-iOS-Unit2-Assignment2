//
//  detailsViewController.swift
//  GameOfThrones
//
//  Created by World Domination a Brand on 11/19/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class detailsViewController: UIViewController {
    
    
   @IBOutlet weak var OriginalImage: UIImageView!
    @IBOutlet weak var seasonLabel: UILabel!
       @IBOutlet weak var episodeLabel: UILabel!
       @IBOutlet weak var runtimeLabel: UILabel!
       @IBOutlet weak var airtimeLabel: UILabel!
       
       @IBOutlet weak var textView: UITextView!
    
    var selectedEpisode: GOTEpisode?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

}
