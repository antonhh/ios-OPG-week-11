//
//  ViewController.swift
//  CustomTableViewDemo
//
//  Created by Anton Haastrup on 16/05/2020.
//  Copyright © 2020 Anton Haastrup. All rights reserved.
//
import UIKit


class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var images: [Image] = []
    
   
    
    override func viewDidLoad()  {
        super.viewDidLoad()
        
        images = createArray()
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let image = images[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "imagecell") as! CustomTableViewCell
        
        cell.setImage(image: image)
        
        return cell
    }
    
    
    
    func createArray() -> [Image] {
        
        var tempImages: [Image] = []
        
        let image1 = Image(image: #imageLiteral(resourceName: "hund"), title: "En Hund der spiller Guitar")
        let image2 = Image(image: #imageLiteral(resourceName: "skel"), title: "Et Skelet")
        let image3 = Image(image: #imageLiteral(resourceName: "mælke"), title: "En Mælkesnit")
        let image4 = Image(image: #imageLiteral(resourceName: "Epstein"), title: "Epstein")
        
        
        tempImages.append(image1)
        tempImages.append(image2)
        tempImages.append(image3)
        tempImages.append(image4)
        
        return tempImages

        
    }

}


