//
//  ListViewController.swift
//  SIOTestApp
//
//  Created by Raghav Sethi on 28/09/20.
//

import UIKit
import RealmSwift

class ListViewController: UIViewController {
    
    var list: [User] = []
    
    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let realm = try! Realm()
        
        print(Realm.Configuration.defaultConfiguration.fileURL as Any)
        
        let results = realm.objects(User.self)
        var i = 0
        while i<results.count {
            self.list.append(results[i])
            i = i + 1
        }
        self.collectionView.reloadData()
    }
}

extension ListViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout  {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return list.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let  cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ListCell", for: indexPath) as! ListCell
        cell.nameLabel.text = list[indexPath.row].name
        cell.experience.text = "\(list[indexPath.row].experience) YEARS"
        cell.occupation.text = list[indexPath.row].occupation
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = self.collectionView.frame.width
        return CGSize(width: width, height: width*133/410)
    }
    
    
}
