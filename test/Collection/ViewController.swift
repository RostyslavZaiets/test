//
//  ViewController.swift
//  test
//
//  Created by Rostyslav Zaiets on 3/27/18.
//  Copyright © 2018 Rostyslav Zaiets. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var collectionView: UICollectionView!
    
    let Images = ["cafedeadend.jpg", "homei.jpg", "teakha.jpg", "cafeloisl.jpg", "petiteoyster.jpg", "forkeerestaurant.jpg", "posatelier.jpg", "bourkestreetbakery.jpg", "haighschocolate.jpg"]
    
    let nameOfNews = ["News #1", "News #2", "News #3", "News #4", "News #5", "News #6", "News #7", "News #8", "News #9"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self
        let layout = self.collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.sectionInset = UIEdgeInsetsMake(0, 5, 0, 5)
        
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return nameOfNews.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
        
        cell.backgroundColor = indexPath.row % 2 == 0 ? UIColor(red: 169/255, green: 195/255, blue: 224/255, alpha: 1) : UIColor(red: 192/255, green: 177/255, blue: 212/255, alpha: 1)
        
        cell.title.text = nameOfNews[indexPath.item]
        cell.newsImage.image = UIImage(named: Images[indexPath.row])
        cell.newsImage.layer.cornerRadius = 35.0
        cell.newsImage.clipsToBounds = true
        cell.newsImage.layer.borderWidth = 1
        cell.newsImage.layer.borderColor = UIColor(red:48/255, green:72/255, blue:120/255, alpha: 1).cgColor
        
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.layer.borderWidth = 0.5
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let Storyboard = UIStoryboard(name: "Main", bundle: nil)
        let DvC = Storyboard.instantiateViewController(withIdentifier: "DetailsViewController") as! DetailsViewController
        DvC.getImages = UIImage(named: Images[indexPath.row])!
        self.navigationController?.pushViewController(DvC, animated: true)
        
    }
    
    

}
