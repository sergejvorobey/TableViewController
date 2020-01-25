//
//  MainTableViewController.swift
//  TableViewController
//
//  Created by Sergey Vorobey on 26/12/2019.
//  Copyright © 2019 Сергей. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {
    
    let place = Place.getPlaces()

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return place.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell

        cell.nameLabel?.text = place[indexPath.row].name
        cell.locationLabel.text = place[indexPath.row].lotation
        cell.typeLabel.text = place[indexPath.row].type
        cell.imageOfPlace.image = UIImage(named: place[indexPath.row].image)
        // динамический размер картинки
        cell.imageOfPlace.layer.cornerRadius = cell.imageOfPlace.frame.size.height / 2
        cell.imageOfPlace.clipsToBounds = true

        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func cancelAction( _ segue: UIStoryboardSegue) {}

}
