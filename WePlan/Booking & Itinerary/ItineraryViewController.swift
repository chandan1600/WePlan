//
//  ItineraryViewController.swift
//  WePlan
//
//  Created by Chandan Aulakh on 24/10/21.
//

import UIKit

class ItineraryViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func goHome(_ sender: Any) {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "mainHome")
            vc.modalPresentationStyle = .overFullScreen
            present(vc, animated: true)
    }
   
}
