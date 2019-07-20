//
//  ViewController.swift
//  ECW-Mobile-iOS
//
//  Created by Muhammad Hassan Shakeel on 17/07/2019.
//  Copyright © 2019 ECW. All rights reserved.
//

import UIKit
import FacebookLogin
import FBSDKLoginKit
import FBSDKCoreKit
import FacebookCore
import SwiftyJSON
import SVProgressHUD

class LoginViewController: UIViewController {
    
    @IBOutlet weak var loginButton: UIButton!
    override func viewDidLoad() {
        // Add a custom login button to your app
        loginButton.layer.cornerRadius = 25
    }
    
    // Once the button is clicked, show the login dialog
    @objc func loginButtonClicked() {
        
        
        
    }
    
    @IBAction func loginPressed(_ sender: Any) {
        let loginManager = LoginManager()
        
        loginManager.logIn(permissions: [.publicProfile,.email], viewController: self) { (loginResult) in
            
            SVProgressHUD.show()
            
            switch loginResult {
            case .failed(_):
                SVProgressHUD.dismiss()
                let alert = UIAlertController(title: "Connection Problem", message: "Please check your internet connection", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default){ action in
                    alert.dismiss(animated: true, completion: nil)
                })
                self.present(alert, animated: true, completion: nil)
            case .cancelled:
                SVProgressHUD.dismiss()
            case .success(_, _, _):
                let connection = GraphRequestConnection()
                connection.add(GraphRequest(graphPath: "me", parameters: ["fields": "email, first_name, last_name, picture.type(large)"])) { (response, result, error) in
                    print(response!)
                    
                    if let data = result as? [String: Any] {
                        print(result!)
                        User.sharedInstance.firstName = data["first_name"] as! String
                        User.sharedInstance.email = data["email"] as! String
                        User.sharedInstance.lastName = data["last_name"] as! String
                        
                        let profile = data["picture"] as! [String : Any]
                        let url = profile["data"] as! [String : Any]
                        User.sharedInstance.profilePicture = URL.init(string: url["url"] as! String)
                    }
                    
                    self.performSegue(withIdentifier: "goToHome", sender: self)
                }
                connection.start()
            }
        }
    }
}

