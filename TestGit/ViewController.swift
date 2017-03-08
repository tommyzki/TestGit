//
//  ViewController.swift
//  TestGit
//
//  Created by Tommy Miyazaki on 3/8/17.
//  Copyright © 2017 Tom. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var weatherImage: UIImageView!
    @IBOutlet weak var weatherLabel: UILabel!
    
    var weather = DataModel()
    
    func updateUI() {
        dateLabel.text = weather.date
        tempLabel.text = "\(weather.temp)"
        locationLabel.text = weather.location
        weatherLabel.text = weather.weather
        weatherImage.image = UIImage(named: weather.weather)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        weather.downloadData {
            self.updateUI()
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // test perubahan GIT....
    

}

