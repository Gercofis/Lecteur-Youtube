//
//  ChansonCell.swift
//  Lecteur Youtube
//
//  Created by Gilles ROBERT on 20/04/2018.
//  Copyright © 2018 Gilles ROBERT. All rights reserved.
//

import UIKit

class ChansonCell: UITableViewCell {
    @IBOutlet weak var miniature: UIImageView!
    @IBOutlet weak var artisteTitreLabel: UILabel!
    
    var chanson: Chanson!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func creerCell(_ chanson: Chanson) {
        self.chanson = chanson
        telechargerImage()
        let attributed = NSMutableAttributedString(string: self.chanson.titre, attributes: [.font: UIFont.boldSystemFont(ofSize: 20), .foregroundColor: UIColor.black])
        let secondeLigne = NSAttributedString(string: "\n" + self.chanson.artiste, attributes: [.font: UIFont.italicSystemFont(ofSize: 20), .foregroundColor: UIColor.darkGray])
        attributed.append(secondeLigne)
        artisteTitreLabel.attributedText = attributed
    }
    
     func telechargerImage(){
        miniature.image = #imageLiteral(resourceName: "logo")
        if let url = URL(string: self.chanson.mignatureUrl){
            let session = URLSession.shared
            let task = session.dataTask(with: url, completionHandler:{(data,response,error) in
                if let imageData = data, let image = UIImage(data: imageData) {
                    DispatchQueue.main.async {
                        self.miniature.image = image
                    }
                }
            })
            task.resume()
        }
    
    
    }
}
