//
//  ViewController.swift
//  GameOfThrones
//
//  Created by Alex Paul on 11/16/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class mainViewController: UIViewController {
    
    @IBOutlet weak var tableview: UITableView!

    var episode = [GOTEpisode]() {
        didSet {
            tableview.reloadData()
        }
    }
    
  override func viewDidLoad() {
    super.viewDidLoad()

  }

    func loadData() {
        episode = GOTEpisode.allEpisodes
    }

}

// extension 
