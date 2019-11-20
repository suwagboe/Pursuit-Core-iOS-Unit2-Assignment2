//
//  OddCell.swift
//  GameOfThrones
//
//  Created by World Domination a Brand on 11/19/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class episodeCell: UITableViewCell {

    // why is it doing this
    
    @IBOutlet weak var mediumImage: UIImageView!
    @IBOutlet weak var episodeNameLabel: UILabel!
    @IBOutlet weak var seasonAndEpisodeNameLabel: UILabel!
    
    func oddConfigureCell(for episodeCell: GOTEpisode) {
        mediumImage.image = UIImage(named: episodeCell.mediumImageID)
        episodeNameLabel.text = episodeCell.name
        seasonAndEpisodeNameLabel.text = "S: \(episodeCell.season) E: \(episodeCell.number)"
        
    }
    
   

}
