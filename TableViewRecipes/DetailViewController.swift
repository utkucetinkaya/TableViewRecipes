//
//  DetailViewController.swift
//  TableViewRecipes
//
//  Created by Utku on 20.03.2021.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    var name: String?

    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = name
    }

}
