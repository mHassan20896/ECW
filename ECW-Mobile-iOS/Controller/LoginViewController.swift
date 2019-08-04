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
    
    override func viewDidLoad() {
        // Add a custom login button to your app
        SVProgressHUD.show()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if AccessToken.current != nil {
            
            let connection = GraphRequestConnection()
            connection.add(GraphRequest(graphPath: "me", parameters: ["fields": "email, first_name, last_name, picture.type(large)"])) { (response, result, error) in
                print(response!)
                
                if error != nil {
                    SVProgressHUD.dismiss()
                    let alert = UIAlertController(title: "Error Occured", message: "Check your internet connection and try again", preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "OK", style: .default){ action in
                        alert.dismiss(animated: true, completion: nil)
                    })
                    self.present(alert, animated: true, completion: nil)
                }
                
                if let data = result as? [String: Any] {
                    print(result!)
                    User.sharedInstance.firstName = data["first_name"] as! String
                    User.sharedInstance.email = data["email"] as! String
                    User.sharedInstance.lastName = data["last_name"] as! String
                    
                    let profile = data["picture"] as! [String : Any]
                    let url = profile["data"] as! [String : Any]
                    User.sharedInstance.profilePicture = URL.init(string: url["url"] as! String)
                    
                    if let data = UserDefaults.standard.object(forKey: "ApplicantsData\(User.sharedInstance.email)"), let value = try?  JSONDecoder().decode(ApplicantsBio.self, from: data as! Data) {
                        ApplicantsBio.sharedInstance = value
                    }
                    
                    self.performSegue(withIdentifier: "goToHome", sender: self)
                }
            }
            
            connection.start()
        }
        else{
            SVProgressHUD.dismiss()
        }
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
                if let data = UserDefaults.standard.object(forKey: "ApplicantsData\(User.sharedInstance.email)"), let value = try?  JSONDecoder().decode(ApplicantsBio.self, from: data as! Data) {
                    ApplicantsBio.sharedInstance = value
                }
                self.performSegue(withIdentifier: "goToHome", sender: self)
            }
        }
        
    }
}

