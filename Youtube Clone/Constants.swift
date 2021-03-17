//
//  Constants.swift
//  Youtube Clone
//
//  Created by MACBOOK on 15/03/21.
//

import Foundation

struct Constants {
   static var API_KEY = "AIzaSyAVpl2CugmYOTgybzFFeh2zIPnJZbZJ6fo"
    static var PLAYLIST_ID = "PLw6-1mSGIFSmMZsZd2YnotYSytK-KdXGh"
    static var API_URL = "https://youtube.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(Constants.PLAYLIST_ID)&key=\(Constants.API_KEY)"
    static var VIDEOCELL_ID = "VideoCell"
}
