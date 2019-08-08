//
//  WhereAboutsTableViewController.swift
//  ECW-Mobile-iOS
//
//  Created by Muhammad Hassan Shakeel on 04/08/2019.
//  Copyright © 2019 ECW. All rights reserved.
//

import UIKit
import Eureka

class WhereAboutsTableViewController: FormViewController {
    
    var count = UserDefaults.standard.integer(forKey: "count\(User.sharedInstance.email)")
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.title = "Family Whereabouts Form"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Save", style: .plain, target: self, action: "saveDidClick")
        
        form
        +++ Section("Candidate Details")
        <<< TextRow() {
            $0.title = "Your contribution to Household Income"
            $0.placeholder = "Tap to Enter"
            $0.value = ApplicantsData.sharedInstance.yourContribution
            $0.onChange {
                if let str = $0.value{
                    if  ApplicantsData.sharedInstance.yourContribution.count == 0 && str.count > 0 {
                        self.changeButtonTitle()
                        self.count += 1
                    }
                    ApplicantsData.sharedInstance.yourContribution = str
                }
                else{
                    self.changeButtonTitle()
                    self.count -= 1
                    ApplicantsData.sharedInstance.yourContribution = ""
                }
            }
        }
        
        +++ Section("Candidate Family Details")
            <<< TextRow() {
                $0.title = "Father Name"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsData.sharedInstance.fathersName
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsData.sharedInstance.fathersName.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                        ApplicantsData.sharedInstance.fathersName = str
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.fathersName = ""
                    }
                }
        }
            <<< TextRow() {
                $0.title = "Father Occupation"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsData.sharedInstance.fathersOccupation
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsData.sharedInstance.fathersOccupation.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                        ApplicantsData.sharedInstance.fathersOccupation = str
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.fathersOccupation = ""
                    }
                }
            }
            <<< TextRow() {
                $0.title = "Contribution to Household Income"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsData.sharedInstance.fathersContribution
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsData.sharedInstance.fathersContribution.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                        ApplicantsData.sharedInstance.fathersContribution = str
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.fathersContribution = ""
                    }                }
        }
            <<< TextRow() {
                $0.title = "Email Address"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsData.sharedInstance.fathersEmail
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsData.sharedInstance.fathersEmail.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                        ApplicantsData.sharedInstance.fathersEmail = str
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.fathersEmail = ""
                    }
                }
        }
            <<< TextRow() {
                $0.title = "Cell #"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsData.sharedInstance.fathersCellNo
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsData.sharedInstance.fathersCellNo.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                        ApplicantsData.sharedInstance.fathersCellNo = str
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.fathersCellNo = ""
                    }
                }
        }
            
            <<< TextRow() {
                $0.title = "Mother Name"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsData.sharedInstance.mothersName
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsData.sharedInstance.mothersName.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                        ApplicantsData.sharedInstance.mothersName = str
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.mothersName = ""
                    }
                }
            }
            <<< TextRow() {
                $0.title = "Mother Occupation"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsData.sharedInstance.mothersOccupation
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsData.sharedInstance.mothersOccupation.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                        ApplicantsData.sharedInstance.mothersOccupation = str
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.mothersOccupation = ""
                    }
                }
            }
            <<< TextRow() {
                $0.title = "Contribution to Household Income"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsData.sharedInstance.mothersContribution
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsData.sharedInstance.mothersContribution.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                        ApplicantsData.sharedInstance.mothersContribution = str
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.mothersContribution = ""
                    }
                }
            }
            <<< TextRow() {
                $0.title = "Email Address"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsData.sharedInstance.mothersEmail
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsData.sharedInstance.mothersEmail.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                        ApplicantsData.sharedInstance.mothersEmail = str
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.mothersEmail = ""
                    }
                }
            }
            <<< TextRow() {
                $0.title = "Cell #"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsData.sharedInstance.motherscellNo
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsData.sharedInstance.motherscellNo.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                        ApplicantsData.sharedInstance.motherscellNo = str
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.motherscellNo = ""
                    }
                }
        }
        
            <<< TextRow() {
                $0.title = "Guardian Name"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsData.sharedInstance.GuardianName
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsData.sharedInstance.GuardianName.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                        ApplicantsData.sharedInstance.GuardianName = str
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.GuardianName = ""
                    }
                }
            }
            <<< TextRow() {
                $0.title = "Guardian Occupation"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsData.sharedInstance.guardiansOccupation
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsData.sharedInstance.guardiansOccupation.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                        ApplicantsData.sharedInstance.guardiansOccupation = str
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.guardiansOccupation = ""
                    }
                }
            }
            <<< TextRow() {
                $0.title = "Guardian relationship to you"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsData.sharedInstance.relationshipToYou
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsData.sharedInstance.relationshipToYou.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                        ApplicantsData.sharedInstance.relationshipToYou = str
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.relationshipToYou = ""
                    }
                }
            }
            <<< TextRow() {
                $0.title = "Contribution to Household Income"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsData.sharedInstance.guardianContribution
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsData.sharedInstance.guardianContribution.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                        ApplicantsData.sharedInstance.guardianContribution = str
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.guardianContribution = ""
                    }
                }
            }
            <<< TextRow() {
                $0.title = "Email Address"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsData.sharedInstance.guardianEmail
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsData.sharedInstance.guardianEmail.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                        ApplicantsData.sharedInstance.guardianEmail = str
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.guardianEmail = ""
                    }
                }
            }
            <<< TextRow() {
                $0.title = "Residential Address"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsData.sharedInstance.guardiansResidentialAddress
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsData.sharedInstance.guardiansResidentialAddress.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                        ApplicantsData.sharedInstance.guardiansResidentialAddress = str
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.guardiansResidentialAddress = ""
                    }
                }
            }
            <<< TextRow() {
                $0.title = "Cell #"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsData.sharedInstance.guardianCell
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsData.sharedInstance.guardianCell.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                        ApplicantsData.sharedInstance.guardianCell = str
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.guardianCell = ""
                    }
                }
        }
            
            <<< TextRow() {
                $0.title = "Your Number in the family"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsData.sharedInstance.yourNumber
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsData.sharedInstance.yourNumber.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                        ApplicantsData.sharedInstance.yourNumber = str
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.yourNumber = ""
                    }
                }
            }
            
            <<< TextRow() {
                $0.title = "Sibling1 Name"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsData.sharedInstance.sibling1Name
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsData.sharedInstance.sibling1Name.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                        ApplicantsData.sharedInstance.sibling1Name = str
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.sibling1Name = ""
                    }
                }
            }
            <<< TextRow() {
                $0.title = "Sibling1 Occupation"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsData.sharedInstance.sibling1Occupation
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsData.sharedInstance.sibling1Occupation.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                        ApplicantsData.sharedInstance.sibling1Occupation = str
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.sibling1Occupation = ""
                    }
                }
            }
            <<< TextRow() {
                $0.title = "Contribution to Household Income"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsData.sharedInstance.sibling1Contribution
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsData.sharedInstance.sibling1Contribution.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                        ApplicantsData.sharedInstance.sibling1Contribution = str
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.sibling1Contribution = ""
                    }
                }
            }
            <<< TextRow() {
                $0.title = "Email Address"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsData.sharedInstance.sibling1Email
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsData.sharedInstance.sibling1Email.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                        ApplicantsData.sharedInstance.sibling1Email = str
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.sibling1Email = ""
                    }
                }
            }
            <<< TextRow() {
                $0.title = "Cell #"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsData.sharedInstance.sibling1cellNo
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsData.sharedInstance.sibling1cellNo.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                        ApplicantsData.sharedInstance.sibling1cellNo = str
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.sibling1cellNo = ""
                    }
                }
        }
        
            <<< TextRow() {
                $0.title = "Sibling2 Name"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsData.sharedInstance.sibling2Name
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsData.sharedInstance.sibling2Name.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                        ApplicantsData.sharedInstance.sibling2Name = str
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.sibling2Name = ""
                    }
                }
            }
            <<< TextRow() {
                $0.title = "Sibling2 Occupation"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsData.sharedInstance.sibling2Occupation
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsData.sharedInstance.sibling2Occupation.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                        ApplicantsData.sharedInstance.sibling2Occupation = str
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.sibling2Occupation = ""
                    }
                }
            }
            <<< TextRow() {
                $0.title = "Contribution to Household Income"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsData.sharedInstance.sibling2Contribution
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsData.sharedInstance.sibling2Contribution.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                        ApplicantsData.sharedInstance.sibling2Contribution = str
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.sibling2Contribution = ""
                    }
                }
            }
            <<< TextRow() {
                $0.title = "Email Address"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsData.sharedInstance.sibling2Email
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsData.sharedInstance.sibling2Email.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                        ApplicantsData.sharedInstance.sibling2Email = str
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.sibling2Email = ""
                    }
                }
            }
            <<< TextRow() {
                $0.title = "Cell #"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsData.sharedInstance.sibling2cellNo
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsData.sharedInstance.sibling2cellNo.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                        ApplicantsData.sharedInstance.sibling2cellNo = str
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.sibling2cellNo = ""
                    }
                }
            }
        
        +++ Section("Financial Details")
            <<< PushRow<String>() {
                $0.title = "Is the place you live in Rented or Owned?"
                $0.value = "Not Selected"
                $0.options = ["Rented","Owned"]
                $0.value = ApplicantsData.sharedInstance.isOwner
                $0.onChange{
                    if let str = $0.value{
                        if  ApplicantsData.sharedInstance.isOwner.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    }
                    if let _ = $0.value {
                        ApplicantsData.sharedInstance.isOwner = $0.value!
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.isOwner = ""
                    }
            }
        }
    }
    
    @objc func saveDidClick(){
        do {
            let value = try JSONEncoder().encode(ApplicantsData.sharedInstance)
            UserDefaults.standard.set(value, forKey: "ApplicantsData\(User.sharedInstance.email)")
            UserDefaults.standard.set(self.count, forKey: "count\(User.sharedInstance.email)")
        }
        catch { print(error) }
        
        if  self.navigationItem.rightBarButtonItem?.title == "Next" {
            let viewController = WhereAboutsTableViewController()
            self.navigationController?.pushViewController(viewController, animated: true)
        }
    }
    
    func changeButtonTitle(){
        if count == 48 {
            self.navigationItem.rightBarButtonItem?.title = "Next"
            self.loadViewIfNeeded()
        } else if count == 49 {
            self.navigationItem.rightBarButtonItem?.title = "Save"
            self.loadViewIfNeeded()
        }
    }

}
