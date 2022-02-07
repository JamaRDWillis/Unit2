//
//  SuperViewController.swift
//  Movie App
//
//  Created by user211074 on 2/6/22.
//

import UIKit

class SuperViewController: UIViewController {
    var movie:[String:Any]!
    
    @IBOutlet weak var backView: UIImageView!
    @IBOutlet weak var summmaryLabel: UILabel!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterPath)
        posterView.af.setImage(withURL: posterUrl!)
        
        let backdropPath = movie["backdrop_path"] as! String
        let backdropUrl = URL(string:"https://image.tmdb.org/t/p/w780" + backdropPath)
        backView.af.setImage(withURL: backdropUrl!)
        
        
        titleLabel.text=movie["title"] as? String
        titleLabel.sizeToFit()
        
        summmaryLabel.text=movie["overview"] as? String
        summmaryLabel.sizeToFit()        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
