//
//  UpdateMarksheetTableViewController.swift
//  ECW-Mobile-iOS
//
//  Created by Muhammad Hassan Shakeel on 05/08/2019.
//  Copyright © 2019 ECW. All rights reserved.
//

import UIKit
import Eureka

class UpdateMarksheetTableViewController: FormViewController{

    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.rightBarButtonItem?.title = "Update"
        
        form
            +++ Section()
            <<< TextRow() {
                $0.title = "Semester #"
                $0.placeholder = "Enter Your Full Name"
                $0.value = ApplicantsData.sharedInstance.yourName
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsData.sharedInstance.yourName.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    }
                    if let _ = $0.value {
                        ApplicantsData.sharedInstance.yourName = $0.value!
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.yourName = ""}
                }
                
        }
        
            <<< TextRow() {
                $0.title = "Course code"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsData.sharedInstance.yourName
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsData.sharedInstance.yourName.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    }
                    if let _ = $0.value {
                        ApplicantsData.sharedInstance.yourName = $0.value!
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.yourName = ""}
                }
                
        }
        
            <<< TextRow() {
                $0.title = "Course Description"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsData.sharedInstance.yourName
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsData.sharedInstance.yourName.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    }
                    if let _ = $0.value {
                        ApplicantsData.sharedInstance.yourName = $0.value!
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.yourName = ""}
                }
        }
        
            <<< TextRow() {
                $0.title = "Marks Attained"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsData.sharedInstance.yourName
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsData.sharedInstance.yourName.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    }
                    if let _ = $0.value {
                        ApplicantsData.sharedInstance.yourName = $0.value!
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.yourName = ""}
                }
        }
        
            <<< TextRow() {
                $0.title = "GPA"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsData.sharedInstance.yourName
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsData.sharedInstance.yourName.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    }
                    if let _ = $0.value {
                        ApplicantsData.sharedInstance.yourName = $0.value!
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.yourName = ""}
                }
        }
        
    }

    // MARK: - Table view data source
    
    func changeButtonTitle(){
        
    }

}
