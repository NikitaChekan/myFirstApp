//
//  ViewController.swift
//  bludfirst
//
//  Created by justhowit on 9/8/21.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var start: UIView!
    @IBOutlet weak var rocket: UIImageView!
    @IBOutlet weak var sucesslabel: UILabel!
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let path = Bundle.main.path(forResource: "launch", ofType: "mp3")
        let url = URL(fileURLWithPath: path!)
        player = try? AVAudioPlayer(contentsOf: url)
        player.prepareToPlay()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func powerbutton(_ sender: Any) {
        start.isHidden = false
        player.play()
        sucesslabel.isHidden = true
        let frame = rocket.frame
        rocket.frame.origin.y = 550
        UIView.animate(withDuration: 3.5, animations: {
            self.rocket.frame = frame
        }) { (_) in
            self.sucesslabel.isHidden = false
        }
    
    }
}



