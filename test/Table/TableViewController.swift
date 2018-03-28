//
//  TableViewController.swift
//  test
//
//  Created by Rostyslav Zaiets on 3/27/18.
//  Copyright © 2018 Rostyslav Zaiets. All rights reserved.
//

import UIKit

class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var newsName = ["News #1", "News #2", "News #3", "News #4", "News #5", "News #6", "News #7", "News #8", "News #9"]
    
    var newsDescriptions = ["news descriptoin news descriptoin news descriptoin news descriptoin news descriptoin", "news descriptoin news descriptoin news descriptoin news descriptoin news descriptoin", "news descriptoin news descriptoin news descriptoin news descriptoin news descriptoin", "news descriptoin news descriptoin news descriptoin news descriptoin news descriptoin", "news descriptoin news descriptoin news descriptoin news descriptoin news descriptoin", "news descriptoin news descriptoin news descriptoin news descriptoin news descriptoin", "news descriptoin news descriptoin news descriptoin news descriptoin news descriptoin", "news descriptoin news descriptoin news descriptoin news descriptoin news descriptoin", "news descriptoin news descriptoin news descriptoin news descriptoin news descriptoin"]
    
    var newsImages = ["cafedeadend.jpg", "homei.jpg", "teakha.jpg", "cafeloisl.jpg", "petiteoyster.jpg", "forkeerestaurant.jpg", "posatelier.jpg", "bourkestreetbakery.jpg", "haighschocolate.jpg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
        cell.tableImages.image = UIImage(named: newsImages[indexPath.row])
        cell.tableLblNews.text = newsName[indexPath.row]
        cell.tableLblDescriptions.text = newsDescriptions[indexPath.row]
        cell.selectionStyle = .none
        
        cell.tableImages.layer.cornerRadius = 46.0
        cell.tableImages.clipsToBounds = true
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let Storyboard = UIStoryboard(name: "Main", bundle: nil)
        let DvC = Storyboard.instantiateViewController(withIdentifier: "DetailsViewController") as! DetailsViewController
        DvC.getImages = UIImage(named: newsImages[indexPath.row])!
        self.navigationController?.pushViewController(DvC, animated: true)
    }
    
    
 

}
