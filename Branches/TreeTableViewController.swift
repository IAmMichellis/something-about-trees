//
//  TreeTableViewController.swift
//  Branches
//
//  Created by Michelle Ellis on 2021-04-16.
//

import UIKit

class TreeTableViewController: UITableViewController {

    //MARK: Properties
    var trees = [Tree]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadSampleTrees()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return trees.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TreeTableViewCell", for: indexPath) as? TreeTableViewCell else {
            fatalError("dequed cell isn't a TreeTableViewCell")
        }
        
        let tree = trees[indexPath.row]
        cell.ratingView.rating = tree.rating
        cell.nameLabel.text = tree.name 
        return cell
    }
    
    //MARK: Private Methods
     
    private func loadSampleTrees() {

        guard let tree1 = Tree(name: "Oak", photo: nil, rating: 4) else {
            fatalError("Unable to instantiate tree1")
        }
         
        guard let tree2 = Tree(name: "Birch", photo: nil, rating: 5) else {
            fatalError("Unable to instantiate tree2")
        }
         
        guard let tree3 = Tree(name: "Cottonwood", photo: nil, rating: 2) else {
            fatalError("Unable to instantiate tree3")
        }
        
        trees += [tree1, tree2, tree3]
    }

}
