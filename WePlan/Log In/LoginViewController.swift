//
//  LoginViewController.swift
//  WePlan
//
//  Created by Chandan Aulakh on 23/10/21.
//

import UIKit
import FirebaseAuth
import Firebase

class LoginViewController: UIViewController {

    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var pass: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func loginTapped(_ sender: Any) {
        ValidateFields()
    }
    
    
    @IBAction func createAccTapped(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "signUP")
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
    }
    
    func ValidateFields(){
        if email.text?.isEmpty == true {
            print("No email text")
            return
        }
        
        if pass.text?.isEmpty == true {
            print("no password")
            return
        }
        
        login()
    }
    
    func login(){
        Auth.auth().signIn(withEmail: email.text!, password: pass.text!) { [weak self] authResult, err in
            guard let strongSelf = self else{return}
            if let err = err {
                    print(err.localizedDescription)
                }
            self?.checkUserInfo()
        }
    }
    
    func checkUserInfo() {
        if Auth.auth().currentUser != nil {
            print(Auth.auth().currentUser?.uid)
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "mainHome")
            vc.modalPresentationStyle = .overFullScreen
            present(vc, animated: true)
        }
    }
    
}
