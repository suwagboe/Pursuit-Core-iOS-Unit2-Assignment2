//
//  EvenCell.swift
//  GameOfThrones
//
//  Created by World Domination a Brand on 11/19/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class EvenCell: UITableViewCell {

    @IBOutlet weak var mediumImage: UIImageView!
    @IBOutlet weak var episodeNameLabel: UILabel!
    @IBOutlet weak var seasonnumberLabel: UILabel!
    @IBOutlet weak var episodenumberlabel: UILabel!

    func evenConfigureCell(for evenCell: GOTEpisode) {
        
        mediumImage.image = UIImage(named: evenCell.mediumImageID)
        episodeNameLabel.text = evenCell.name
        seasonnumberLabel.text = evenCell.season.description
        episodenumberlabel.text = evenCell.airdate
        
    }
}
