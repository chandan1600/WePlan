//
//  SignUpViewController.swift
//  WePlan
//
//  Created by Chandan Aulakh on 23/10/21.
//

import UIKit
import FirebaseAuth
import Firebase

class SignUpViewController: UIViewController {

    @IBOutlet weak var eamil: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func signUpTap(_ sender: Any) {
        if eamil.text?.isEmpty == true {
            print("No text in email field")
            return
        }
        
        if password.text?.isEmpty == true {
            print("No text in password")
            return
        }
        
        signUp()
    }

    @IBAction func alreadyHaveTap(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "login")
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
    }
    
    func signUp() {
        Auth.auth().createUser(withEmail: eamil.text!, password: password.text!) { (authResult, error) in
            guard let user = authResult?.user, error == nil else {
                print("error \(error?.localizedDescription)")
                return
            }
            
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let vc = storyboard.instantiateViewController(withIdentifier: "mainHome")
                vc.modalPresentationStyle = .overFullScreen
                self.present(vc, animated: true)
            }
    }
    
}


