//
//  ViewController.swift
//  TableViewRecipes
//
//  Created by Utku on 20.03.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var recipes = Recipe.createRecipes()

    override func viewDidLoad() {
        super.viewDidLoad()
        registerTableView()
    }
   

    func registerTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
    }

}
extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        cell.nameLabel.text = recipes[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let viewController = DetailViewController(nibName: "DetailViewController", bundle: nil)
        viewController.name = recipes[indexPath.row].name
        self.navigationController?.pushViewController(viewController, animated: true)
        }
    }

