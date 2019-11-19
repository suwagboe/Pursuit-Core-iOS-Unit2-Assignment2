//
//  OddCell.swift
//  GameOfThrones
//
//  Created by World Domination a Brand on 11/19/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class OddCell: UITableViewCell {

    // why is it doing this
    
    @IBOutlet weak var mediumImage: UIImageView!
    @IBOutlet weak var episodeNameLabel: UILabel!
    @IBOutlet weak var seasonNameLabel: UILabel!
    @IBOutlet weak var episodeNumberLabel: UILabel!
    
    func oddConfigureCell(for oddCell: GOTEpisode) {
        mediumImage.image = UIImage(named: oddCell.mediumImageID)
        episodeNameLabel.text = oddCell.name
        seasonNameLabel.text = "S: \(oddCell.season)"
        episodeNumberLabel.text = "E: \(oddCell.number)"
        
    }
    
   

}
