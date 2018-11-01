//
//  MoviesTableViewController.swift
//  MoviesDetail
//
//  Created by David A Cantú Delgado on 9/30/18.
//  Copyright © 2018 Bugsracer. All rights reserved.
//

import UIKit

class MoviesTableViewCell: UITableViewCell {
    @IBOutlet weak var lbMovie: UILabel!
    @IBOutlet weak var lbDirector: UILabel!
    @IBOutlet weak var imPoster: UIImageView!
    
}

class MoviesTableViewController: UITableViewController {
    
    var moviesList = [Movies]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var movie = Movies(movie: "Cinema Paradiso", director: "Giuseppe Tornatore", poster: UIImage(named: "cinemaparadiso")!,rating: "IMDB 8.5", detail: "A filmmaker recalls his childhood when falling in love with the pictures at the cinema of his home village and forms a deep friendship with the cinema's projectionist.", year: "1988")
        moviesList.append(movie)
        movie = Movies(movie: "The Lord Of The Rings", director: "Peter Jackson", poster: UIImage(named: "thelordoftherings")!,rating: "IMDB 8.8", detail: "A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle-earth from the Dark Lord Sauron.", year: "2001")
        moviesList.append(movie)
    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return moviesList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as! MoviesTableViewCell
        
        let movie = moviesList[indexPath.row]
        
        cell.lbMovie?.text = movie.movie
        cell.lbDirector?.text = movie.director
        cell.imPoster?.image = movie.poster
        
        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewMovieDetail = segue.destination as! ViewController
        let indexPath = tableView.indexPathForSelectedRow
        viewMovieDetail.movie = moviesList[indexPath!.row]
    }
}
