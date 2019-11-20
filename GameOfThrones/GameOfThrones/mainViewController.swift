//
//  ViewController.swift
//  GameOfThrones
//
//  Created by Alex Paul on 11/16/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

// why do we use table views it is a way to show data
import UIKit

class mainViewController: UIViewController {
    
    @IBOutlet weak var tableview: UITableView!

    var episode = [[GOTEpisode]]() {
        didSet {
            tableview.reloadData()
        }
    }
    
  override func viewDidLoad() {
    super.viewDidLoad()
    tableview.dataSource = self
    tableview.delegate = self
loadData()
    
  }

    func loadData() {
        episode = GOTEpisode.getSeasons()
    }

    // need to do the code for the prepare for segue...
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dvc = segue.destination as? detailsViewController, let indexPath = tableview.indexPathForSelectedRow else {
            fatalError("something is wrong with the segue")
        }
        let thisEpisode = episode[indexPath.section][indexPath.row]
        
        dvc.selectedEpisode = thisEpisode
    }
    
    
}

extension mainViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return episode[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let firstPickedEpisode = episode[indexPath.section][indexPath.row]

//        var cell: episodeCell!
      
        if indexPath.section % 2 == 0 {
            
            guard let thisEpisode = tableView.dequeueReusableCell(withIdentifier: "evenCell", for: indexPath) as? episodeCell else {
                fatalError("the deqeue didnt work for the even cell")
            }
            
            thisEpisode.oddConfigureCell(for: firstPickedEpisode)
            
            return thisEpisode
            
        } else {
            guard let thisEpisode = tableView.dequeueReusableCell(withIdentifier: "oddCell", for: indexPath) as? episodeCell else {
                fatalError("the dequeue didnt work for the odd cell ")
        }
            thisEpisode.oddConfigureCell(for: firstPickedEpisode)

        return thisEpisode
    }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return episode.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return episode[section].first?.season.description
    }
}

extension mainViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
}
