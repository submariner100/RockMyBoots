//
//  PartyCell.swift
//  RockMyBoots
//
//  Created by Macbook on 07/10/2016.
//  Copyright © 2016 Chappy-App. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {


  @IBOutlet weak var videoTitle: UILabel!
  @IBOutlet weak var videoPreviewImage: UIImageView!




    override func awakeFromNib() {
        super.awakeFromNib()
      
    }

  func updateUI(partyRock: PartyRock) {
  
    videoTitle.text = partyRock.videoTitle
    
    //TODO: set image from  url
    
    
  }
  
}
