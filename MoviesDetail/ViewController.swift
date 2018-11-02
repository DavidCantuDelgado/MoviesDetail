//
//  ViewController.swift
//  MoviesDetail
//
//  Created by David A Cantú Delgado on 9/30/18.
//  Copyright © 2018 Bugsracer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbMovie: UILabel!
    @IBOutlet weak var lbDirector: UILabel!
    @IBOutlet weak var lbDetail: UILabel!
    @IBOutlet weak var lbRating: UILabel!
    @IBOutlet weak var lbYear: UILabel!
    @IBOutlet weak var imPoster: UIImageView!
    
    var movie: NSDictionary!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbMovie.text = movie.value(forKey: "movie") as? String
        lbDirector.text = movie.value(forKey: "director") as? String
        lbDetail.text = movie.value(forKey: "detail") as? String
        lbRating.text = movie.value(forKey: "rating") as? String
        lbYear.text = movie.value(forKey: "year") as? String
        let sUrl = movie.value(forKey: "poster") as? String
        let url = URL(string: sUrl!)
        let imgData = NSData(contentsOf: url!)
        imPoster.image = UIImage(data: imgData! as Data)
         
        
    }


}

