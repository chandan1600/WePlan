//
//  confirmedBookingViewController.swift
//  WePlan
//
//  Created by Chandan Aulakh on 25/10/21.
//

import UIKit

class confirmedBookingViewController: UIViewController {

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
    

    @IBAction func goItinerary(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "itinerary")
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
    }
}
