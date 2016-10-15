//
//  ViewController.swift
//  RockMyBoots
//
//  Created by Macbook on 06/10/2016.
//  Copyright © 2016 Chappy-App. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

  @IBOutlet weak var tableView: UITableView!
  
  
    var partyRocks = [PartyRock]()
  
  

    override func viewDidLoad() {
    super.viewDidLoad()
    
   /* let urlTest = "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ev4bY1SkZLg\" frameborder=\"0\" allowfullscreen></iframe>"
   */
   
    let p1 = PartyRock(imageURL: "http://www.wavefm.com.au/images/stories/2015/04/redfoo.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ev4bY1SkZLg\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Where the sun goes down")
    
    let p2 = PartyRock(imageURL: "http://www.croshalgroup.comwp-content/uploads/2015/05/Redfoo-Website.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/1w9DiG1ZksU\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Lets get Ridiculous")
    
    let p3 = PartyRock(imageURL: "https://i.ytimg.com/vi/2wUxw6GH3IM/hqdefault.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/vg_nvEGryA4\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Juicy Wiggle Lesson")
    
    let p4 = PartyRock(imageURL: "http://www.billboard.com/files/styles/article_main-anthem-2011-billboard-650.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/gZIqw92GaTQ\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Party Rock Commercial")
      
    let p5 = PartyRock(imageURL: "http://direct-ns.rhap.com/imageserver/v2/albums/Alb.219913217/images/600x600.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/tWyug1GCKgE\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Juicy Wiggle")
    
    partyRocks.append(p1)
    partyRocks.append(p2)
    partyRocks.append(p3)
    partyRocks.append(p4)
    partyRocks.append(p5)
    
      
    tableView.delegate = self
    tableView.dataSource = self
    
    }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
  
    if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell {
      
        let partyRock = partyRocks[indexPath.row]
    
        cell.updateUI(partyRock: partyRock)
      
        return cell
      
    } else {
    
        return UITableViewCell()
  }
}
  
  
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return partyRocks.count
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
    let partyRock = partyRocks[indexPath.row]
    
    performSegue(withIdentifier: "VideoVC", sender: partyRock)
    
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
    if let destination = segue.destination as? VideoVC {
      
      if let party = sender as? PartyRock {
      
        destination.partyRock = party
      }
      
    }
  }

  
}





