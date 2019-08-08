//
//  HomeViewController.swift
//  ECW-Mobile-iOS
//
//  Created by Muhammad Hassan Shakeel on 17/07/2019.
//  Copyright © 2019 ECW. All rights reserved.
//

import UIKit
import SideMenuSwift
import SwiftyJSON
import Alamofire
import SVProgressHUD
import FBSDKCoreKit

protocol UpdateMarks {
    func showUpdateMarksForm()
}

class HomeViewController: UIViewController, UpdateMarks {

    @IBOutlet weak var seeScholarshipButton: UIButton!
    @IBOutlet weak var selectionStatus: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.navigationController?.navigationBar.barStyle = .black
        
        seeScholarshipButton.layer.cornerRadius = 25
        
        SVProgressHUD.dismiss()
    }
    

    @IBAction func sideBarButtonPressed(_ sender: Any) {
            
        self.sideMenuController?.revealMenu()
    }

    @IBAction func seeScholarshipPressed(_ sender: Any) {
        SVProgressHUD.show()
        
        self.performSegue(withIdentifier: "goToSchemes", sender: self)
        
//        Alamofire.request("192.168.0.1").responseJSON { (response) in
//
//            switch response.result {
//            case .success(_):
//                self.performSegue(withIdentifier: "goToSchemes", sender: self)
//            case .failure(_):
//                SVProgressHUD.dismiss()
//                let alert = UIAlertController(title: "Error Occured", message: "Check your internet connection and try again", preferredStyle: .alert)
//                alert.addAction((UIAlertAction(title: "OK", style: .default){ action in
//
//                    alert.dismiss(animated: true, completion: nil)
//
//                }))
//                self.present(alert, animated: true, completion: nil)
//            }
//
//        }
    }
    
    func showUpdateMarksForm() {
        let VC = UpdateMarksheetTableViewController()
        self.navigationController?.pushViewController(VC, animated: true)
    }
    
}
