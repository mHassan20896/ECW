//
//  ApplicationFormViewController.swift
//  ECW-Mobile-iOS
//
//  Created by Muhammad Hassan Shakeel on 26/07/2019.
//  Copyright © 2019 ECW. All rights reserved.
//

import UIKit
import Eureka
import ImageRow

class ApplicationFormViewController: FormViewController {
    var count = UserDefaults.standard.integer(forKey: "count\(User.sharedInstance.email)")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Save", style: .plain, target: self, action: "saveDidClick")
        
        form
        +++ Section("Applicant Personal Information")
            <<< ImageRow() {
                $0.title = "Upload your image"
                
                if ApplicantsData.sharedInstance.yourImage != nil {
                    $0.value = UIImage(data: ApplicantsData.sharedInstance.yourImage!)
                }
                
                $0.sourceTypes = [.PhotoLibrary, .Camera, .SavedPhotosAlbum]
                $0.clearAction = .yes(style: UIAlertAction.Style.destructive)
                $0.onChange {
                    let image: UIImage = $0.value!
                    ApplicantsData.sharedInstance.yourImage = image.pngData()!

                }
            }
            <<< TextRow() {
                $0.title = "Applicant Name"
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
                $0.add(rule: RuleRequired())
                $0.validationOptions = .validatesOnChange
                $0.add(rule: RuleRequired())
                $0.validationOptions = .validatesOnChange
                $0.cellUpdate { cell, row in
                    if !row.isValid {
                        cell.titleLabel?.textColor = .red
                    }
                }
        }
            <<< PushRow<String>() {
                $0.title = "Gender"
                $0.value = "Not Selected"
                $0.options = ["Male","Female"]
                $0.value = ApplicantsData.sharedInstance.yourGender
                $0.onChange{
                    if let str = $0.value{
                        if  ApplicantsData.sharedInstance.yourGender.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    }
                    if let _ = $0.value {
                        ApplicantsData.sharedInstance.yourGender = $0.value!
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.yourGender = ""}
                }
        }
            <<< TextRow() {
                $0.title = "Cell #"
                $0.placeholder = "+923XXXXXXXXX"
                $0.value = ApplicantsData.sharedInstance.yourCell
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsData.sharedInstance.yourCell.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    }
                    if let _ = $0.value {
                        ApplicantsData.sharedInstance.yourCell = $0.value!
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.yourCell = ""}
                }
        }
            <<< TextRow() {
                $0.title = "NIC"
                $0.placeholder = "XXXXXXXXXXXXXXXX"
                $0.value = ApplicantsData.sharedInstance.yourNIC
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsData.sharedInstance.yourNIC.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    }
                    if let _ = $0.value {
                        ApplicantsData.sharedInstance.yourNIC = $0.value!
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.yourNIC = ""}
                    
                }
            }
            <<< TextRow() {
                $0.title = "Email"
                $0.placeholder = "abc@xyz.com"
                $0.value = ApplicantsData.sharedInstance.yourEmail
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsData.sharedInstance.yourEmail.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    }
                    if let _ = $0.value {
                        ApplicantsData.sharedInstance.yourEmail = $0.value!
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.yourEmail = ""}
                }
        }
            <<< DateRow(){
                $0.title = "Date of Birth"
                $0.maximumDate = Date()
                $0.value = ApplicantsData.sharedInstance.yourDOB
                $0.onChange {
                    if let _ = $0.value{
                        if  ApplicantsData.sharedInstance.yourDOB == nil {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    }
                    if let _ = $0.value {
                        ApplicantsData.sharedInstance.yourDOB = $0.value!
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.yourDOB = nil}
                }
        }
        
        +++ Section("Permanent (Home) Address")
            <<< TextRow() {
                $0.title = "Street Adress 1"
                $0.placeholder = "Click to Enter"
                $0.value = ApplicantsData.sharedInstance.yourStreetAddress1
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsData.sharedInstance.yourStreetAddress1.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    }
                    if let _ = $0.value {
                        ApplicantsData.sharedInstance.yourStreetAddress1 = $0.value!
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.yourStreetAddress1 = ""}
                }
                $0.add(rule: RuleRequired())
                $0.validationOptions = .validatesOnChange
                $0.add(rule: RuleRequired())
                $0.validationOptions = .validatesOnChange
                $0.cellUpdate { cell, row in
                    if !row.isValid {
                        cell.titleLabel?.textColor = .red
                    }
                }
            }
            <<< TextRow() {
                $0.title = "Street Adress 2"
                $0.placeholder = "Click to Enter"
                $0.value = ApplicantsData.sharedInstance.yourStreetAddress2
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsData.sharedInstance.yourStreetAddress2.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    }
                    if let _ = $0.value {
                        ApplicantsData.sharedInstance.yourStreetAddress2 = $0.value!
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.yourStreetAddress2 = ""}
                }
            }
            <<< TextRow() {
                $0.title = "City"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsData.sharedInstance.yourCity
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsData.sharedInstance.yourCity.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    }
                    if let _ = $0.value {
                        ApplicantsData.sharedInstance.yourCity = $0.value!
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.yourCity = ""}
                }
                $0.add(rule: RuleRequired())
                $0.validationOptions = .validatesOnChange
                $0.add(rule: RuleRequired())
                $0.validationOptions = .validatesOnChange
                $0.cellUpdate { cell, row in
                    if !row.isValid {
                        cell.titleLabel?.textColor = .red
                    }
                }
            }
            <<< TextRow() {
                $0.title = "Country"
                $0.placeholder = "abc@xyz.com"
                $0.value = ApplicantsData.sharedInstance.yourzcountry
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsData.sharedInstance.yourzcountry.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    }
                    if let _ = $0.value {
                        ApplicantsData.sharedInstance.yourzcountry = $0.value!
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.yourzcountry = ""}
                }
                $0.add(rule: RuleRequired())
                $0.validationOptions = .validatesOnChange
                $0.add(rule: RuleRequired())
                $0.validationOptions = .validatesOnChange
                $0.cellUpdate { cell, row in
                    if !row.isValid {
                        cell.titleLabel?.textColor = .red
                    }
                }
            }
            <<< TextRow() {
                $0.title = "Telephone #"
                $0.placeholder = "Click to Enter"
                $0.value = ApplicantsData.sharedInstance.yourTelephone
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsData.sharedInstance.yourTelephone.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    }
                    if let _ = $0.value {
                        ApplicantsData.sharedInstance.yourTelephone = $0.value!
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.yourTelephone = ""}
                }
        }
        
        +++ Section("Guardian / Father Details")
            <<< TextRow() {
                $0.title = "Guardian / Father Name"
                $0.placeholder = "Enter Guardian / Father Full Name"
                $0.value = ApplicantsData.sharedInstance.GuardianName
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsData.sharedInstance.GuardianName.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    }
                    if let _ = $0.value {
                        ApplicantsData.sharedInstance.GuardianName = $0.value!
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.GuardianName = ""}
                }
                $0.add(rule: RuleRequired())
                $0.validationOptions = .validatesOnChange
                $0.add(rule: RuleRequired())
                $0.validationOptions = .validatesOnChange
                $0.cellUpdate { cell, row in
                    if !row.isValid {
                        cell.titleLabel?.textColor = .red
                    }
                }
            }
            <<< PushRow<String>() {
                $0.title = "Gender"
                $0.value = "Not Selected"
                $0.options = ["Male","Female"]
                $0.value = ApplicantsData.sharedInstance.guardianGender
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsData.sharedInstance.guardianGender.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    }
                    if let _ = $0.value {
                        ApplicantsData.sharedInstance.guardianGender = $0.value!
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.guardianGender = ""}
                }
            }
            <<< TextRow() {
                $0.title = "Relationship to You"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsData.sharedInstance.relationshipToYou
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsData.sharedInstance.relationshipToYou.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    }
                    if let _ = $0.value {
                        ApplicantsData.sharedInstance.relationshipToYou = $0.value!
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.relationshipToYou = ""}
                }
                $0.add(rule: RuleRequired())
                $0.validationOptions = .validatesOnChange
                $0.add(rule: RuleRequired())
                $0.validationOptions = .validatesOnChange
                $0.cellUpdate { cell, row in
                    if !row.isValid {
                        cell.titleLabel?.textColor = .red
                    }
                }
            }
            <<< TextRow() {
                $0.title = "Employment Status & Title"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsData.sharedInstance.employmentStatus
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsData.sharedInstance.employmentStatus.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    }
                    if let _ = $0.value {
                        ApplicantsData.sharedInstance.employmentStatus = $0.value!
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.employmentStatus = ""} }
                $0.add(rule: RuleRequired())
                $0.validationOptions = .validatesOnChange
                $0.add(rule: RuleRequired())
                $0.validationOptions = .validatesOnChange
                $0.cellUpdate { cell, row in
                    if !row.isValid {
                        cell.titleLabel?.textColor = .red
                    }
                }
            }
            <<< TextRow() {
                $0.title = "Street Adress 1"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsData.sharedInstance.guardianStreetAddress1
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsData.sharedInstance.guardianStreetAddress1.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    }
                    if let _ = $0.value {
                        ApplicantsData.sharedInstance.guardianStreetAddress1 = $0.value!
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.guardianStreetAddress1 = ""}
                }
                $0.add(rule: RuleRequired())
                $0.validationOptions = .validatesOnChange
                $0.add(rule: RuleRequired())
                $0.validationOptions = .validatesOnChange
                $0.cellUpdate { cell, row in
                    if !row.isValid {
                        cell.titleLabel?.textColor = .red
                    }
                }
            }
            <<< TextRow() {
                $0.title = "Street Adress 2"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsData.sharedInstance.guardianStreetAddress2
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsData.sharedInstance.guardianStreetAddress2.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    }
                    if let _ = $0.value {
                        ApplicantsData.sharedInstance.guardianStreetAddress2 = $0.value!
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.guardianStreetAddress2 = ""}}
            }
            <<< TextRow() {
                $0.title = "City"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsData.sharedInstance.guardianCity
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsData.sharedInstance.guardianCity.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    }
                    if let _ = $0.value {
                        ApplicantsData.sharedInstance.guardianCity = $0.value!
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.guardianCity = ""} }
                $0.add(rule: RuleRequired())
                $0.validationOptions = .validatesOnChange
                $0.add(rule: RuleRequired())
                $0.validationOptions = .validatesOnChange
                $0.cellUpdate { cell, row in
                    if !row.isValid {
                        cell.titleLabel?.textColor = .red
                    }
                }
            }
            <<< TextRow() {
                $0.title = "Country"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsData.sharedInstance.guardianCountry
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsData.sharedInstance.guardianCountry.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    }
                    if let _ = $0.value {
                        ApplicantsData.sharedInstance.guardianCountry = $0.value!
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.guardianCountry = ""} }
                $0.add(rule: RuleRequired())
                $0.validationOptions = .validatesOnChange
                $0.add(rule: RuleRequired())
                $0.validationOptions = .validatesOnChange
                $0.cellUpdate { cell, row in
                    if !row.isValid {
                        cell.titleLabel?.textColor = .red
                    }
                }
            }
            <<< TextRow() {
                $0.title = "Telephone #"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsData.sharedInstance.guardianTelephone
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsData.sharedInstance.guardianTelephone.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    }
                    if let _ = $0.value {
                        ApplicantsData.sharedInstance.guardianTelephone = $0.value!
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.guardianTelephone = ""}}
            }
            <<< DateRow(){
                $0.title = "Date of Birth"
                $0.maximumDate = Date()
                $0.value = ApplicantsData.sharedInstance.guardianDOB
                $0.onChange {
                    if let _ = $0.value{
                        if  ApplicantsData.sharedInstance.guardianDOB == nil {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    }
                    if let _ = $0.value {
                        ApplicantsData.sharedInstance.guardianDOB = $0.value!
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.guardianDOB = nil}
                }
        }
            
        +++ Section("Academic Information")
            <<< TextRow() {
                $0.title = "University/ Institute/ School"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsData.sharedInstance.organization
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsData.sharedInstance.organization.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    }
                    if let _ = $0.value {
                        ApplicantsData.sharedInstance.organization = $0.value!
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.organization = ""} }
                $0.add(rule: RuleRequired())
                $0.validationOptions = .validatesOnChange
                $0.add(rule: RuleRequired())
                $0.validationOptions = .validatesOnChange
                $0.cellUpdate { cell, row in
                    if !row.isValid {
                        cell.titleLabel?.textColor = .red
                    }
                }
            }
            <<< TextRow() {
                $0.title = "Major in"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsData.sharedInstance.majorIn
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsData.sharedInstance.majorIn.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    }
                    if let _ = $0.value {
                        ApplicantsData.sharedInstance.majorIn = $0.value!
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.majorIn = ""}
                }
                $0.add(rule: RuleRequired())
                $0.validationOptions = .validatesOnChange
                $0.add(rule: RuleRequired())
                $0.validationOptions = .validatesOnChange
                $0.cellUpdate { cell, row in
                    if !row.isValid {
                        cell.titleLabel?.textColor = .red
                    }
                }
            }
            <<< TextRow() {
                $0.title = "Badge of"
                $0.placeholder = "Click to Enter"
                $0.value = ApplicantsData.sharedInstance.badgeOf
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsData.sharedInstance.badgeOf.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    }
                    if let _ = $0.value {
                        ApplicantsData.sharedInstance.badgeOf = $0.value!
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.badgeOf = ""}
                }
                $0.add(rule: RuleRequired())
                $0.validationOptions = .validatesOnChange
                $0.add(rule: RuleRequired())
                $0.validationOptions = .validatesOnChange
                $0.cellUpdate { cell, row in
                    if !row.isValid {
                        cell.titleLabel?.textColor = .red
                    }
                }
            }
            <<< TextRow() {
                $0.title = "Current Year / Semester"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsData.sharedInstance.currentSemester
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsData.sharedInstance.currentSemester.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    }
                    if let _ = $0.value {
                        ApplicantsData.sharedInstance.currentSemester = $0.value!
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.currentSemester = ""}
                }
                $0.add(rule: RuleRequired())
                $0.validationOptions = .validatesOnChange
                $0.add(rule: RuleRequired())
                $0.validationOptions = .validatesOnChange
                $0.cellUpdate { cell, row in
                    if !row.isValid {
                        cell.titleLabel?.textColor = .red
                    }
                }
            }
            <<< DateRow(){
                $0.title = "Program / Course Start Date"
                $0.value = ApplicantsData.sharedInstance.courseStartDate
                $0.onChange {
                    if let _ = $0.value{
                        if  ApplicantsData.sharedInstance.courseStartDate == nil {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    }
                    if let _ = $0.value {
                        ApplicantsData.sharedInstance.courseStartDate = $0.value!
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.courseStartDate = nil}
                }
            }
            <<< DateRow(){
                $0.title = "Program / Course End Date"
                $0.value = ApplicantsData.sharedInstance.courseEndDate
                $0.onChange {
                    if let _ = $0.value{
                    if  ApplicantsData.sharedInstance.courseEndDate == nil {
                        self.changeButtonTitle()
                        self.count += 1
                    }
                }
                    if let _ = $0.value {
                        ApplicantsData.sharedInstance.courseEndDate = $0.value!
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.courseEndDate = nil}
                }
            }
            <<< TextRow() {
                $0.title = "CGPA / %"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsData.sharedInstance.CGPA
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsData.sharedInstance.CGPA.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    }
                    if let _ = $0.value {
                        ApplicantsData.sharedInstance.CGPA = $0.value!
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.CGPA = ""}
                }
            }
            <<< TextRow() {
                $0.title = "Enrollment #"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsData.sharedInstance.enrolement
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsData.sharedInstance.enrolement.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    }
                    if let _ = $0.value {
                        ApplicantsData.sharedInstance.enrolement = $0.value!
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.enrolement = ""}
                }
            }
            <<< TextRow() {
                $0.title = "Total Courses attended"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsData.sharedInstance.courseAttended
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsData.sharedInstance.courseAttended.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    }
                    if let _ = $0.value {
                        ApplicantsData.sharedInstance.courseAttended = $0.value!
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.courseAttended = ""} }
                $0.add(rule: RuleRequired())
                $0.validationOptions = .validatesOnChange
                $0.add(rule: RuleRequired())
                $0.validationOptions = .validatesOnChange
                $0.cellUpdate { cell, row in
                    if !row.isValid {
                        cell.titleLabel?.textColor = .red
                    }
                }
            }
            <<< TextRow() {
                $0.title = "Total courses in the program"
                $0.placeholder = "Click to Enter"
                $0.value = ApplicantsData.sharedInstance.totalCourses
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsData.sharedInstance.totalCourses.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    }
                    if let _ = $0.value {
                        ApplicantsData.sharedInstance.totalCourses = $0.value!
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.totalCourses = ""}}
                $0.add(rule: RuleRequired())
                $0.validationOptions = .validatesOnChange
                $0.add(rule: RuleRequired())
                $0.validationOptions = .validatesOnChange
                $0.cellUpdate { cell, row in
                    if !row.isValid {
                        cell.titleLabel?.textColor = .red
                    }
                }
            }
        
        +++ Section("List of other Educations details (in order of last attended)")
        +++ Section("1")
            <<< TextRow() {
                $0.title = "University/ Institute/ School"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsData.sharedInstance.attendedOrgName[0]
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsData.sharedInstance.attendedOrgName[0].count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    }
                    if let _ = $0.value {
                        ApplicantsData.sharedInstance.attendedOrgName[0] = $0.value!
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.attendedOrgName[0] = ""} }
                $0.add(rule: RuleRequired())
                $0.validationOptions = .validatesOnChange
                $0.add(rule: RuleRequired())
                $0.validationOptions = .validatesOnChange
                $0.cellUpdate { cell, row in
                    if !row.isValid {
                        cell.titleLabel?.textColor = .red
                    }
                }
            }
            <<< DateRow(){
                $0.title = "Program / Course Start Date"
                $0.value = ApplicantsData.sharedInstance.attendedOrgFrom[0]
                $0.onChange {
                    if let _ = $0.value{
                        if  ApplicantsData.sharedInstance.attendedOrgFrom[0] == nil {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    }
                    if let _ = $0.value {
                        ApplicantsData.sharedInstance.attendedOrgFrom[0] = $0.value!
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.attendedOrgFrom[0] = nil}
                }
            }
            <<< DateRow(){
                $0.title = "Program / Course End Date"
                $0.value = ApplicantsData.sharedInstance.attendedOrgTo[0]
                $0.onChange {
                    if let _ = $0.value{
                        if  ApplicantsData.sharedInstance.attendedOrgTo[0] == nil {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    }
                    if let _ = $0.value {
                        ApplicantsData.sharedInstance.attendedOrgTo[0] = $0.value!
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.attendedOrgTo[0] = nil} }
            }
            +++ Section("2")
                    <<< TextRow() {
                        $0.title = "University/ Institute/ School"
                        $0.placeholder = "Tap to Enter"
                        $0.value = ApplicantsData.sharedInstance.attendedOrgName[1]
                        $0.onChange {
                            if let str = $0.value{
                                if  ApplicantsData.sharedInstance.attendedOrgName[1].count == 0 && str.count > 0 {
                                    self.changeButtonTitle()
                                    self.count += 1
                                }
                            }
                            if let _ = $0.value {
                                ApplicantsData.sharedInstance.attendedOrgName[1] = $0.value!
                            }
                            else{
                                self.changeButtonTitle()
                                self.count -= 1
                                ApplicantsData.sharedInstance.attendedOrgName[1] = ""}
                        }
                        $0.add(rule: RuleRequired())
                        $0.validationOptions = .validatesOnChange
                        $0.add(rule: RuleRequired())
                        $0.validationOptions = .validatesOnChange
                        $0.cellUpdate { cell, row in
                            if !row.isValid {
                                cell.titleLabel?.textColor = .red
                            }
                        }
                    }
                    <<< DateRow(){
                        $0.title = "Program / Course Start Date"
                        $0.value = ApplicantsData.sharedInstance.attendedOrgFrom[1]
                        $0.onChange {
                            if let _ = $0.value{
                                if  ApplicantsData.sharedInstance.attendedOrgFrom[1] == nil {
                                    self.changeButtonTitle()
                                    self.count += 1
                                }
                            }
                            if let _ = $0.value {
                                ApplicantsData.sharedInstance.attendedOrgFrom[1] = $0.value!
                            }
                            else{
                                self.changeButtonTitle()
                                self.count -= 1
                                ApplicantsData.sharedInstance.attendedOrgFrom[1] = nil}
                        }
                    }
                    <<< DateRow(){
                        $0.title = "Program / Course End Date"
                        $0.value = ApplicantsData.sharedInstance.attendedOrgTo[1]
                        $0.onChange {
                            if let _ = $0.value{
                                if  ApplicantsData.sharedInstance.attendedOrgTo[1] == nil {
                                    self.changeButtonTitle()
                                    self.count += 1
                                }
                            } else if (self.count-1) > 0 {
                                self.changeButtonTitle()
                                self.count -= 1 }
                            if let _ = $0.value {
                                ApplicantsData.sharedInstance.attendedOrgTo[1] = $0.value!
                            }
                            else{ ApplicantsData.sharedInstance.attendedOrgTo[1] = nil}
                            
                        }
                    }
            +++ Section("3")
            <<< TextRow() {
                $0.title = "University/ Institute/ School"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsData.sharedInstance.attendedOrgName[2]
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsData.sharedInstance.attendedOrgName[2].count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    }
                    if let _ = $0.value {
                        ApplicantsData.sharedInstance.attendedOrgName[2] = $0.value!
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.attendedOrgName[2] = ""}
                }
                $0.add(rule: RuleRequired())
                $0.validationOptions = .validatesOnChange
                $0.add(rule: RuleRequired())
                $0.validationOptions = .validatesOnChange
                $0.cellUpdate { cell, row in
                    if !row.isValid {
                        cell.titleLabel?.textColor = .red
                    }
                }
            }
            <<< DateRow(){
                $0.title = "Program / Course Start Date"
                $0.value = ApplicantsData.sharedInstance.attendedOrgFrom[2]
                $0.onChange {
                    if let _ = $0.value{
                        if  ApplicantsData.sharedInstance.attendedOrgFrom[2] == nil {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    }
                    if let _ = $0.value {
                        ApplicantsData.sharedInstance.attendedOrgFrom[2] = $0.value!
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.attendedOrgFrom[2] = nil}
                }
            }
            <<< DateRow(){
                $0.title = "Program / Course End Date"
                $0.value = ApplicantsData.sharedInstance.attendedOrgTo[2]
                $0.onChange {
                    if let _ = $0.value{
                        if  ApplicantsData.sharedInstance.attendedOrgTo[2] == nil {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    }
                    if let _ = $0.value {
                        ApplicantsData.sharedInstance.attendedOrgTo[2] = $0.value!
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.attendedOrgTo[2] = nil}
                    
                }
            }
        
        +++ Section("Have you ever recieved academic honors or awards for scholastic achievements?")
        +++ Section("1")
            <<< TextRow() {
                $0.title = "Name"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsData.sharedInstance.awardName[0]
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsData.sharedInstance.awardName[0].count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    }
                    if let _ = $0.value {
                        ApplicantsData.sharedInstance.awardName[0] = $0.value!
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.awardName[0] = ""}
                }
                $0.add(rule: RuleRequired())
                $0.validationOptions = .validatesOnChange
                $0.add(rule: RuleRequired())
                $0.validationOptions = .validatesOnChange
                $0.cellUpdate { cell, row in
                    if !row.isValid {
                        cell.titleLabel?.textColor = .red
                    }
                }
            }
            <<< DateRow(){
                $0.title = "Award date"
                $0.value = ApplicantsData.sharedInstance.date[0]
                $0.onChange {
                    if let _ = $0.value{
                        if  ApplicantsData.sharedInstance.date[0] == nil {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    }
                    if let _ = $0.value {
                        ApplicantsData.sharedInstance.date[0] = $0.value!
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.date[0] = nil }
                }
            }
            <<< TextRow(){
                $0.title = "Awarded For"
                $0.value = ApplicantsData.sharedInstance.awardFor[0]
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsData.sharedInstance.awardFor[0].count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    }
                    if let _ = $0.value {
                        ApplicantsData.sharedInstance.awardFor[0] = $0.value!
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.awardFor[0] = ""} }
            }
            +++ Section("2")
            <<< TextRow() {
                $0.title = "Name"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsData.sharedInstance.awardName[1]
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsData.sharedInstance.awardName[1].count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    }
                    if let _ = $0.value {
                        ApplicantsData.sharedInstance.awardName[1] = $0.value!
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.awardName[1] = ""}
                }
                $0.add(rule: RuleRequired())
                $0.validationOptions = .validatesOnChange
                $0.add(rule: RuleRequired())
                $0.validationOptions = .validatesOnChange
                $0.cellUpdate { cell, row in
                    if !row.isValid {
                        cell.titleLabel?.textColor = .red
                    }
                }
            }
            <<< DateRow(){
                $0.title = "Award date"
                $0.value = ApplicantsData.sharedInstance.date[1]
                $0.onChange {
                    if let _ = $0.value{
                        if  ApplicantsData.sharedInstance.date[1] == nil {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    }
                    if let _ = $0.value {
                        ApplicantsData.sharedInstance.date[1] = $0.value!
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.date[1] = nil }
                }
            }
            <<< TextRow(){
                $0.title = "Awarded For"
                $0.value = ApplicantsData.sharedInstance.awardFor[1]
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsData.sharedInstance.awardFor[1].count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    }
                    if let _ = $0.value {
                        ApplicantsData.sharedInstance.awardFor[1] = $0.value!
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.awardFor[1] = ""} }
            }
            
            +++ Section("3")
            <<< TextRow() {
                $0.title = "Name"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsData.sharedInstance.awardName[2]
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsData.sharedInstance.awardName[2].count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    }
                    if let _ = $0.value {
                        ApplicantsData.sharedInstance.awardName[2] = $0.value!
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.awardName[2] = ""}
                }
                $0.add(rule: RuleRequired())
                $0.validationOptions = .validatesOnChange
                $0.add(rule: RuleRequired())
                $0.validationOptions = .validatesOnChange
                $0.cellUpdate { cell, row in
                    if !row.isValid {
                        cell.titleLabel?.textColor = .red
                    }
                }
            }
            <<< DateRow(){
                $0.title = "Award date"
                $0.value = ApplicantsData.sharedInstance.date[2]
                $0.onChange {
                    if let _ = $0.value{
                        if  ApplicantsData.sharedInstance.date[2] == nil {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    }
                    if let _ = $0.value {
                        ApplicantsData.sharedInstance.date[2] = $0.value!
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.date[2] = nil }
                }
            }
            <<< TextRow(){
                $0.title = "Awarded For"
                $0.value = ApplicantsData.sharedInstance.awardFor[2]
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsData.sharedInstance.awardFor[2].count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    }
                    if let _ = $0.value {
                        ApplicantsData.sharedInstance.awardFor[2] = $0.value!
                    }
                    else{
                        self.changeButtonTitle()
                        self.count -= 1
                        ApplicantsData.sharedInstance.awardFor[2] = ""} }
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
