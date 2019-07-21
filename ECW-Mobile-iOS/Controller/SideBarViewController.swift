//
//  SideBarViewController.swift
//  ECW-Mobile-iOS
//
//  Created by Muhammad Hassan Shakeel on 19/07/2019.
//  Copyright © 2019 ECW. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireImage
import FBSDKLoginKit

class SideBarViewController: UIViewController {

    @IBOutlet weak var profilePicture: UIImageView!
    @IBOutlet weak var userName: UILabel!
    
    override func viewDidLoad()	 {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        profilePicture.layer.cornerRadius = profilePicture.frame.size.width / 2
        profilePicture.layer.masksToBounds = true
        userName.text = "\(User.sharedInstance.firstName) \(User.sharedInstance.lastName)"
        if let picture = User.sharedInstance.profilePicture {
            Alamofire.request(picture).responseImage { (response) in
                if let image = response.result.value {
                    self.profilePicture.image = image
                }
            }
        }
    }
    
    
    @IBAction func updateYourMarksPressed(_ sender: Any) {
    }
    
    
    @IBAction func logOutPressed(_ sender: Any) {
        let loginManager = LoginManager()
        
        loginManager.logOut()
        
        self.dismiss(animated: true, completion: nil)
    }
    
}
