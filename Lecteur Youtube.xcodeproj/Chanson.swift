//
//  Chanson.swift
//  Lecteur Youtube
//
//  Created by Gilles ROBERT on 20/04/2018.
//  Copyright © 2018 Gilles ROBERT. All rights reserved.
//

import Foundation

class Chanson{
    private var _artiste: String
    private var _titre: String
    private var _code: String
    private var _baseUrlVideo = "https://youtube.com/embed/"
    private var _baseUrlMignature = "http://i.ytimg.com/vi/"
    private var _finUrlMignature = "/maxresdefault/jpg"
    
    var artiste: String {
        return _artiste
    }
    
    var titre: String {
        return _titre
    }
    
    var videoUrl: String{
        return _baseUrlVideo + _code
    }
    
    var mignatureUrl:String{
        return _baseUrlMignature + _code + _finUrlMignature
    }
    init(artiste: String, titre: String, code: String) {
        self._artiste = artiste
        self._titre = titre
        self._code = code
    }
//    func ajouterChanson() {
//        //chansons = [Chanson]()
//    }
    
}
