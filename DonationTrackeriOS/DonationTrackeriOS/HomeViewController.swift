//
//  HomeViewController.swift
//  DonationTrackeriOS
//
//  Created by Abhay Tangella on 12/2/18.
//  Copyright © 2018 Abhay Tangella. All rights reserved.
//

import UIKit
import FirebaseAuth


class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func logOutAction(_ sender: Any) {
        let firebaseAuth = Auth.auth()
        do {
            try firebaseAuth.signOut()
        } catch let signOutError as NSError {
            print("Error signing out %@", signOutError)
        }
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let intial = storyboard.instantiateInitialViewController()
        UIApplication.shared.keyWindow?.rootViewController = intial
    }
    
    
    /*
    @IBAction func logOutAction(_ sender: Any) {
        do {
            try Auth.auth().signOut()
        }
        catch let signOutError as NSError {
            print ("Error signing out: %@", signOutError)
        }
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let initial = storyboard.instantiateInitialViewController()
        UIApplication.shared.keyWindow?.rootViewController = initial
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
