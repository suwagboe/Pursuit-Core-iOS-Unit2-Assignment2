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
    
    func updateUI(){
        guard let theEpisode = selectedEpisode else {
            fatalError("the reassignment of the selectedEpisode did not compile")
        }
        
        
        navigationItem.title = theEpisode.name
        OriginalImage.image = UIImage(named: (theEpisode.originalImageID.description))
        seasonLabel.text = "Seaoson: \(theEpisode.season))"
        episodeLabel.text = "Episode: \(theEpisode.number)"
        runtimeLabel.text = "Runtime: \(theEpisode.runtime)"
        airtimeLabel.text = "Airtime: \(theEpisode.airdate)"
        
    }

}
