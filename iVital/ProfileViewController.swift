//
//  ProfileViewController.swift
//  iVital
//
//  Created by Benson Wu on 11/25/18.
//  Copyright © 2018 Lambda Pledge Class. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet var pollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    let list = [ "Age", "Weight" ]
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "table_cell")
        cell.textLabel?.text = list[indexPath.row]
        
        return cell
        
    }
    
    let cell_list = [ "Resting Heart Rate", "Normal Body Temperature", "Normal Blood Pressure", "Normal Respitory Rate" ]
    
    func collectionView(_ pollectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cell_list.count
    }
    
    func collectionView(_ pollectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = pollectionView.dequeueReusableCell(withReuseIdentifier: "pollectionViewCell", for: indexPath ) as! PollectionViewCell
        
        cell.displayContent( text: cell_list[indexPath.row] )
            
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

}
