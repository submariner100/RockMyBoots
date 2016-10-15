//
//  PartyRock.swift
//  RockMyBoots
//
//  Created by Macbook on 07/10/2016.
//  Copyright © 2016 Chappy-App. All rights reserved.
//  This is our Model Class

import Foundation


class PartyRock {

    private var _imageURL: String!
    private var _videoURL: String!
    private var _videoTitle: String!
  
  
  var imageURL: String {
    return _imageURL
  }
  
  var videoURL: String {
    return _videoURL
    
  }
  
  var videoTitle: String {
    return _videoTitle
    
  }
  
  
  init(imageURL: String, videoURL: String, videoTitle: String) {
    
    _imageURL = imageURL
    _videoURL = videoURL
    _videoTitle = videoTitle
    
  }
  
  
  
  
  
}
