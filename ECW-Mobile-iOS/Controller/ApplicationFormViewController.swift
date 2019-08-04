//
//  ApplicationFormViewController.swift
//  ECW-Mobile-iOS
//
//  Created by Muhammad Hassan Shakeel on 26/07/2019.
//  Copyright © 2019 ECW. All rights reserved.
//

import UIKit
import Eureka

class ApplicationFormViewController: FormViewController {
    var count = UserDefaults.standard.integer(forKey: "count")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Save", style: .plain, target: self, action: "saveDidClick")
        
        form
        +++ Section("Applicant Personal Information")
            <<< TextRow() {
                $0.title = "Applicant Name"
                $0.placeholder = "Enter Your Full Name"
                $0.value = ApplicantsBio.sharedInstance.name
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsBio.sharedInstance.name.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    } else if (self.count-1) > 0 {
                        self.changeButtonTitle()
                        self.count -= 1 }
                    if let _ = $0.value {
                        ApplicantsBio.sharedInstance.name = $0.value!
                    }
                    else{ ApplicantsBio.sharedInstance.name = ""}
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
                $0.value = ApplicantsBio.sharedInstance.gender
                $0.onChange{
                    if let str = $0.value{
                        if  ApplicantsBio.sharedInstance.gender.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    } else if (self.count-1) > 0 {
                        self.changeButtonTitle()
                        self.count -= 1 }
                    if let _ = $0.value {
                        ApplicantsBio.sharedInstance.gender = $0.value!
                    }
                    else{ ApplicantsBio.sharedInstance.gender = ""}
                }
        }
            <<< TextRow() {
                $0.title = "Cell #"
                $0.placeholder = "+923XXXXXXXXX"
                $0.value = ApplicantsBio.sharedInstance.cell
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsBio.sharedInstance.cell.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    } else if (self.count-1) > 0 {
                        self.changeButtonTitle()
                        self.count -= 1 }
                    if let _ = $0.value {
                        ApplicantsBio.sharedInstance.cell = $0.value!
                    }
                    else{ ApplicantsBio.sharedInstance.cell = ""}
                }
        }
            <<< TextRow() {
                $0.title = "NIC"
                $0.placeholder = "XXXXXXXXXXXXXXXX"
                $0.value = ApplicantsBio.sharedInstance.NIC
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsBio.sharedInstance.NIC.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    } else if (self.count-1) > 0 {
                        self.changeButtonTitle()
                        self.count -= 1 }
                    if let _ = $0.value {
                        ApplicantsBio.sharedInstance.NIC = $0.value!
                    }
                    else{ ApplicantsBio.sharedInstance.NIC = ""}
                    
                }
            }
            <<< TextRow() {
                $0.title = "Email"
                $0.placeholder = "abc@xyz.com"
                $0.value = ApplicantsBio.sharedInstance.email
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsBio.sharedInstance.email.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    } else if (self.count-1) > 0 {
                        self.changeButtonTitle()
                        self.count -= 1 }
                    if let _ = $0.value {
                        ApplicantsBio.sharedInstance.email = $0.value!
                    }
                    else{ ApplicantsBio.sharedInstance.email = ""}
                }
        }
            <<< DateRow(){
                $0.title = "Date of Birth"
                $0.maximumDate = Date()
                $0.value = ApplicantsBio.sharedInstance.DOB
                $0.onChange {
                    if let _ = $0.value{
                        if  ApplicantsBio.sharedInstance.DOB == nil {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    } else if (self.count-1) > 0 {
                        self.changeButtonTitle()
                        self.count -= 1 }
                    if let _ = $0.value {
                        ApplicantsBio.sharedInstance.DOB = $0.value!
                    }
                    else{ ApplicantsBio.sharedInstance.DOB = nil}
                }
        }
        
        +++ Section("Permanent (Home) Address")
            <<< TextRow() {
                $0.title = "Street Adress 1"
                $0.placeholder = "Click to Enter"
                $0.value = ApplicantsBio.sharedInstance.streetAddress1
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsBio.sharedInstance.streetAddress1.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    } else if (self.count) > 0 {
                        self.changeButtonTitle()
                        self.count -= 1 }
                    if let _ = $0.value {
                        ApplicantsBio.sharedInstance.streetAddress1 = $0.value!
                    }
                    else{ ApplicantsBio.sharedInstance.streetAddress1 = ""}
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
                $0.value = ApplicantsBio.sharedInstance.streetAddress2
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsBio.sharedInstance.streetAddress2.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    }
                    if let _ = $0.value {
                        ApplicantsBio.sharedInstance.streetAddress2 = $0.value!
                    }
                    else{
                        self.count -= 1
                        ApplicantsBio.sharedInstance.streetAddress2 = ""}
                }
            }
            <<< TextRow() {
                $0.title = "City"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsBio.sharedInstance.city
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsBio.sharedInstance.city.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    } else if (self.count-1) > 0 {
                        self.changeButtonTitle()
                        self.count -= 1 }
                    if let _ = $0.value {
                        ApplicantsBio.sharedInstance.city = $0.value!
                    }
                    else{ ApplicantsBio.sharedInstance.city = ""}
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
                $0.value = ApplicantsBio.sharedInstance.country
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsBio.sharedInstance.country.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    } else if (self.count-1) > 0 {
                        self.changeButtonTitle()
                        self.count -= 1 }
                    if let _ = $0.value {
                        ApplicantsBio.sharedInstance.country = $0.value!
                    }
                    else{ ApplicantsBio.sharedInstance.country = ""}
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
                $0.value = ApplicantsBio.sharedInstance.telephone
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsBio.sharedInstance.telephone.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    } else if (self.count-1) > 0 {
                        self.changeButtonTitle()
                        self.count -= 1 }
                    if let _ = $0.value {
                        ApplicantsBio.sharedInstance.telephone = $0.value!
                    }
                    else{ ApplicantsBio.sharedInstance.telephone = ""}
                }
        }
        
        +++ Section("Guardian / Father Details")
            <<< TextRow() {
                $0.title = "Guardian / Father Name"
                $0.placeholder = "Enter Guardian / Father Full Name"
                $0.value = ApplicantsBio.sharedInstance.GuardianName
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsBio.sharedInstance.GuardianName.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    } else if (self.count-1) > 0 {
                        self.changeButtonTitle()
                        self.count -= 1 }
                    if let _ = $0.value {
                        ApplicantsBio.sharedInstance.GuardianName = $0.value!
                    }
                    else{ ApplicantsBio.sharedInstance.GuardianName = ""}
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
                $0.value = ApplicantsBio.sharedInstance.guardianGender
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsBio.sharedInstance.telephone.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    } else if (self.count-1) > 0 {
                        self.changeButtonTitle()
                        self.count -= 1 }
                    if let _ = $0.value {
                        ApplicantsBio.sharedInstance.guardianGender = $0.value!
                    }
                    else{ ApplicantsBio.sharedInstance.guardianGender = ""}
                }
            }
            <<< TextRow() {
                $0.title = "Relationship to You"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsBio.sharedInstance.relationshipToYou
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsBio.sharedInstance.relationshipToYou.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    } else if (self.count-1) > 0 {
                        self.changeButtonTitle()
                        self.count -= 1 }
                    if let _ = $0.value {
                        ApplicantsBio.sharedInstance.relationshipToYou = $0.value!
                    }
                    else{ ApplicantsBio.sharedInstance.relationshipToYou = ""}
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
                $0.value = ApplicantsBio.sharedInstance.employmentStatus
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsBio.sharedInstance.employmentStatus.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    } else if (self.count-1) > 0 {
                        self.changeButtonTitle()
                        self.count -= 1 }
                    if let _ = $0.value {
                        ApplicantsBio.sharedInstance.employmentStatus = $0.value!
                    }
                    else{ ApplicantsBio.sharedInstance.employmentStatus = ""} }
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
                $0.value = ApplicantsBio.sharedInstance.guardianStreetAddress1
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsBio.sharedInstance.guardianStreetAddress1.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    } else if (self.count-1) > 0 {
                        self.changeButtonTitle()
                        self.count -= 1 }
                    if let _ = $0.value {
                        ApplicantsBio.sharedInstance.guardianStreetAddress1 = $0.value!
                    }
                    else{ ApplicantsBio.sharedInstance.guardianStreetAddress1 = ""}
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
                $0.value = ApplicantsBio.sharedInstance.guardianStreetAddress2
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsBio.sharedInstance.guardianStreetAddress2.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    } else if (self.count-1) > 0 {
                        self.changeButtonTitle()
                        self.count -= 1 }
                    if let _ = $0.value {
                        ApplicantsBio.sharedInstance.guardianStreetAddress2 = $0.value!
                    }
                    else{ ApplicantsBio.sharedInstance.guardianStreetAddress2 = ""}}
            }
            <<< TextRow() {
                $0.title = "City"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsBio.sharedInstance.guardianCity
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsBio.sharedInstance.guardianCity.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    } else if (self.count-1) > 0 {
                        self.changeButtonTitle()
                        self.count -= 1 }
                    if let _ = $0.value {
                        ApplicantsBio.sharedInstance.guardianCity = $0.value!
                    }
                    else{ ApplicantsBio.sharedInstance.guardianCity = ""} }
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
                $0.value = ApplicantsBio.sharedInstance.guardianCountry
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsBio.sharedInstance.guardianCountry.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    } else if (self.count-1) > 0 {
                        self.changeButtonTitle()
                        self.count -= 1 }
                    if let _ = $0.value {
                        ApplicantsBio.sharedInstance.guardianCountry = $0.value!
                    }
                    else{ ApplicantsBio.sharedInstance.guardianCountry = ""} }
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
                $0.value = ApplicantsBio.sharedInstance.guardianTelephone
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsBio.sharedInstance.guardianTelephone.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    } else if (self.count-1) > 0 {
                        self.changeButtonTitle()
                        self.count -= 1 }
                    if let _ = $0.value {
                        ApplicantsBio.sharedInstance.guardianTelephone = $0.value!
                    }
                    else{ ApplicantsBio.sharedInstance.guardianTelephone = ""}}
            }
            <<< DateRow(){
                $0.title = "Date of Birth"
                $0.maximumDate = Date()
                $0.value = ApplicantsBio.sharedInstance.guardianDOB
                $0.onChange {
                    if let _ = $0.value{
                        if  ApplicantsBio.sharedInstance.guardianDOB == nil {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    } else if (self.count-1) > 0 {
                        self.changeButtonTitle()
                        self.count -= 1 }
                    if let _ = $0.value {
                        ApplicantsBio.sharedInstance.guardianDOB = $0.value!
                    }
                    else{ ApplicantsBio.sharedInstance.guardianDOB = nil}
                }
        }
            
        +++ Section("Academic Information")
            <<< TextRow() {
                $0.title = "University/ Institute/ School"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsBio.sharedInstance.organization
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsBio.sharedInstance.organization.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    } else if (self.count-1) > 0 {
                        self.changeButtonTitle()
                        self.count -= 1 }
                    if let _ = $0.value {
                        ApplicantsBio.sharedInstance.organization = $0.value!
                    }
                    else{ ApplicantsBio.sharedInstance.organization = ""} }
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
                $0.value = ApplicantsBio.sharedInstance.majorIn
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsBio.sharedInstance.majorIn.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    } else if (self.count-1) > 0 {
                        self.changeButtonTitle()
                        self.count -= 1 }
                    if let _ = $0.value {
                        ApplicantsBio.sharedInstance.majorIn = $0.value!
                    }
                    else{ ApplicantsBio.sharedInstance.majorIn = ""}
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
                $0.value = ApplicantsBio.sharedInstance.badgeOf
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsBio.sharedInstance.badgeOf.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    } else if (self.count-1) > 0 {
                        self.changeButtonTitle()
                        self.count -= 1 }
                    if let _ = $0.value {
                        ApplicantsBio.sharedInstance.badgeOf = $0.value!
                    }
                    else{ ApplicantsBio.sharedInstance.badgeOf = ""}
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
                $0.value = ApplicantsBio.sharedInstance.currentSemester
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsBio.sharedInstance.currentSemester.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    } else if (self.count-1) > 0 {
                        self.changeButtonTitle()
                        self.count -= 1 }
                    if let _ = $0.value {
                        ApplicantsBio.sharedInstance.currentSemester = $0.value!
                    }
                    else{ ApplicantsBio.sharedInstance.currentSemester = ""}
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
                $0.value = ApplicantsBio.sharedInstance.courseStartDate
                $0.onChange {
                    if let _ = $0.value{
                        if  ApplicantsBio.sharedInstance.courseStartDate == nil {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    } else if (self.count-1) > 0 {
                        self.changeButtonTitle()
                        self.count -= 1 }
                    if let _ = $0.value {
                        ApplicantsBio.sharedInstance.courseStartDate = $0.value!
                    }
                    else{ ApplicantsBio.sharedInstance.courseStartDate = nil}
                }
            }
            <<< DateRow(){
                $0.title = "Program / Course End Date"
                $0.value = ApplicantsBio.sharedInstance.courseEndDate
                $0.onChange {
                    if let _ = $0.value{
                    if  ApplicantsBio.sharedInstance.courseEndDate == nil {
                        self.changeButtonTitle()
                        self.count += 1
                    }
                } else if (self.count-1) > 0 {
                    self.changeButtonTitle()
                    self.count -= 1 }
                    if let _ = $0.value {
                        ApplicantsBio.sharedInstance.courseEndDate = $0.value!
                    }
                    else{ ApplicantsBio.sharedInstance.courseEndDate = nil}
                }
            }
            <<< TextRow() {
                $0.title = "CGPA / %"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsBio.sharedInstance.CGPA
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsBio.sharedInstance.CGPA.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    } else if (self.count-1) > 0 {
                        self.changeButtonTitle()
                        self.count -= 1 }
                    if let _ = $0.value {
                        ApplicantsBio.sharedInstance.CGPA = $0.value!
                    }
                    else{ ApplicantsBio.sharedInstance.CGPA = ""}
                }
            }
            <<< TextRow() {
                $0.title = "Enrollment #"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsBio.sharedInstance.enrolement
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsBio.sharedInstance.enrolement.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    } else if (self.count-1) > 0 {
                        self.changeButtonTitle()
                        self.count -= 1 }
                    if let _ = $0.value {
                        ApplicantsBio.sharedInstance.enrolement = $0.value!
                    }
                    else{ ApplicantsBio.sharedInstance.enrolement = ""}
                }
            }
            <<< TextRow() {
                $0.title = "Total Courses attended"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsBio.sharedInstance.courseAttended
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsBio.sharedInstance.courseAttended.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    } else if (self.count-1) > 0 {
                        self.changeButtonTitle()
                        self.count -= 1 }
                    if let _ = $0.value {
                        ApplicantsBio.sharedInstance.courseAttended = $0.value!
                    }
                    else{ ApplicantsBio.sharedInstance.courseAttended = ""} }
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
                $0.value = ApplicantsBio.sharedInstance.totalCourses
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsBio.sharedInstance.totalCourses.count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    } else if (self.count-1) > 0 {
                        self.changeButtonTitle()
                        self.count -= 1 }
                    if let _ = $0.value {
                        ApplicantsBio.sharedInstance.totalCourses = $0.value!
                    }
                    else{ ApplicantsBio.sharedInstance.totalCourses = ""}}
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
                $0.value = ApplicantsBio.sharedInstance.attendedOrgName[0]
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsBio.sharedInstance.attendedOrgName[0].count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    } else if (self.count-1) > 0 {
                        self.changeButtonTitle()
                        self.count -= 1 }
                    if let _ = $0.value {
                        ApplicantsBio.sharedInstance.attendedOrgName[0] = $0.value!
                    }
                    else{ ApplicantsBio.sharedInstance.attendedOrgName[0] = ""} }
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
                $0.value = ApplicantsBio.sharedInstance.attendedOrgFrom[0]
                $0.onChange {
                    if let _ = $0.value{
                        if  ApplicantsBio.sharedInstance.attendedOrgFrom[0] == nil {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    } else if (self.count-1) > 0 {
                        self.changeButtonTitle()
                        self.count -= 1 }
                    if let _ = $0.value {
                        ApplicantsBio.sharedInstance.attendedOrgFrom[0] = $0.value!
                    }
                    else{ ApplicantsBio.sharedInstance.attendedOrgFrom[0] = nil}
                }
            }
            <<< DateRow(){
                $0.title = "Program / Course End Date"
                $0.value = ApplicantsBio.sharedInstance.attendedOrgTo[0]
                $0.onChange {
                    if let _ = $0.value{
                        if  ApplicantsBio.sharedInstance.attendedOrgTo[0] == nil {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    } else if (self.count-1) > 0 {
                        self.changeButtonTitle()
                        self.count -= 1 }
                    if let _ = $0.value {
                        ApplicantsBio.sharedInstance.attendedOrgTo[0] = $0.value!
                    }
                    else{ ApplicantsBio.sharedInstance.attendedOrgTo[0] = nil} }
            }
            +++ Section("2")
                    <<< TextRow() {
                        $0.title = "University/ Institute/ School"
                        $0.placeholder = "Tap to Enter"
                        $0.value = ApplicantsBio.sharedInstance.attendedOrgName[1]
                        $0.onChange {
                            if let str = $0.value{
                                if  ApplicantsBio.sharedInstance.attendedOrgName[1].count == 0 && str.count > 0 {
                                    self.changeButtonTitle()
                                    self.count += 1
                                }
                            } else if (self.count-1) > 0 {
                                self.changeButtonTitle()
                                self.count -= 1 }
                            if let _ = $0.value {
                                ApplicantsBio.sharedInstance.attendedOrgName[1] = $0.value!
                            }
                            else{ ApplicantsBio.sharedInstance.attendedOrgName[1] = ""}
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
                        $0.value = ApplicantsBio.sharedInstance.attendedOrgFrom[1]
                        $0.onChange {
                            if let _ = $0.value{
                                if  ApplicantsBio.sharedInstance.attendedOrgFrom[1] == nil {
                                    self.changeButtonTitle()
                                    self.count += 1
                                }
                            } else if (self.count-1) > 0 {
                                self.changeButtonTitle()
                                self.count -= 1 }
                            if let _ = $0.value {
                                ApplicantsBio.sharedInstance.attendedOrgFrom[1] = $0.value!
                            }
                            else{ ApplicantsBio.sharedInstance.attendedOrgFrom[1] = nil}
                        }
                    }
                    <<< DateRow(){
                        $0.title = "Program / Course End Date"
                        $0.value = ApplicantsBio.sharedInstance.attendedOrgTo[1]
                        $0.onChange {
                            if let _ = $0.value{
                                if  ApplicantsBio.sharedInstance.attendedOrgTo[1] == nil {
                                    self.changeButtonTitle()
                                    self.count += 1
                                }
                            } else if (self.count-1) > 0 {
                                self.changeButtonTitle()
                                self.count -= 1 }
                            if let _ = $0.value {
                                ApplicantsBio.sharedInstance.attendedOrgTo[1] = $0.value!
                            }
                            else{ ApplicantsBio.sharedInstance.attendedOrgTo[1] = nil}
                            
                        }
                    }
            +++ Section("3")
            <<< TextRow() {
                $0.title = "University/ Institute/ School"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsBio.sharedInstance.attendedOrgName[2]
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsBio.sharedInstance.attendedOrgName[2].count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    } else if (self.count-1) > 0 {
                        self.changeButtonTitle()
                        self.count -= 1 }
                    if let _ = $0.value {
                        ApplicantsBio.sharedInstance.attendedOrgName[2] = $0.value!
                    }
                    else{ ApplicantsBio.sharedInstance.attendedOrgName[2] = ""}
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
                $0.value = ApplicantsBio.sharedInstance.attendedOrgFrom[2]
                $0.onChange {
                    if let _ = $0.value{
                        if  ApplicantsBio.sharedInstance.attendedOrgFrom[2] == nil {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    } else if (self.count-1) > 0 {
                        self.changeButtonTitle()
                        self.count -= 1 }
                    if let _ = $0.value {
                        ApplicantsBio.sharedInstance.attendedOrgFrom[2] = $0.value!
                    }
                    else{ ApplicantsBio.sharedInstance.attendedOrgFrom[2] = nil}
                }
            }
            <<< DateRow(){
                $0.title = "Program / Course End Date"
                $0.value = ApplicantsBio.sharedInstance.attendedOrgTo[2]
                $0.onChange {
                    if let _ = $0.value{
                        if  ApplicantsBio.sharedInstance.attendedOrgTo[2] == nil {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    } else if (self.count-1) > 0 {
                        self.changeButtonTitle()
                        self.count -= 1 }
                    if let _ = $0.value {
                        ApplicantsBio.sharedInstance.attendedOrgTo[2] = $0.value!
                    }
                    else{ ApplicantsBio.sharedInstance.attendedOrgTo[2] = nil}
                    
                }
            }
        
        +++ Section("Have you ever recieved academic honors or awards for scholastic achievements?")
        +++ Section("1")
            <<< TextRow() {
                $0.title = "Name"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsBio.sharedInstance.awardName[0]
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsBio.sharedInstance.awardName[0].count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    } else if (self.count-1) > 0 {
                        self.changeButtonTitle()
                        self.count -= 1 }
                    if let _ = $0.value {
                        ApplicantsBio.sharedInstance.awardName[0] = $0.value!
                    }
                    else{ ApplicantsBio.sharedInstance.awardName[0] = ""}
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
                $0.value = ApplicantsBio.sharedInstance.date[0]
                $0.onChange {
                    if let _ = $0.value{
                        if  ApplicantsBio.sharedInstance.date[0] == nil {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    } else if (self.count-1) > 0 { self.count -= 1 }
                    if let _ = $0.value {
                        ApplicantsBio.sharedInstance.date[0] = $0.value!
                    }
                    else{ ApplicantsBio.sharedInstance.date[0] = nil }
                }
            }
            <<< TextRow(){
                $0.title = "Awarded For"
                $0.value = ApplicantsBio.sharedInstance.awardFor[0]
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsBio.sharedInstance.awardFor[0].count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    } else if (self.count-1) > 0 {
                        self.changeButtonTitle()
                        self.count -= 1 }
                    if let _ = $0.value {
                        ApplicantsBio.sharedInstance.awardFor[0] = $0.value!
                    }
                    else{ ApplicantsBio.sharedInstance.awardFor[0] = ""} }
            }
            +++ Section("2")
            <<< TextRow() {
                $0.title = "Name"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsBio.sharedInstance.awardName[1]
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsBio.sharedInstance.awardName[1].count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    } else if (self.count-1) > 0 {
                        self.changeButtonTitle()
                        self.count -= 1 }
                    if let _ = $0.value {
                        ApplicantsBio.sharedInstance.awardName[1] = $0.value!
                    }
                    else{ ApplicantsBio.sharedInstance.awardName[1] = ""}
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
                $0.value = ApplicantsBio.sharedInstance.date[1]
                $0.onChange {
                    if let _ = $0.value{
                        if  ApplicantsBio.sharedInstance.date[1] == nil {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    } else if (self.count-1) > 0 { self.count -= 1 }
                    if let _ = $0.value {
                        ApplicantsBio.sharedInstance.date[1] = $0.value!
                    }
                    else{ ApplicantsBio.sharedInstance.date[1] = nil }
                }
            }
            <<< TextRow(){
                $0.title = "Awarded For"
                $0.value = ApplicantsBio.sharedInstance.awardFor[1]
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsBio.sharedInstance.awardFor[1].count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    } else if (self.count-1) > 0 {
                        self.changeButtonTitle()
                        self.count -= 1 }
                    if let _ = $0.value {
                        ApplicantsBio.sharedInstance.awardFor[1] = $0.value!
                    }
                    else{ ApplicantsBio.sharedInstance.awardFor[1] = ""} }
            }
            
            +++ Section("3")
            <<< TextRow() {
                $0.title = "Name"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsBio.sharedInstance.awardName[2]
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsBio.sharedInstance.awardName[2].count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    } else if (self.count-1) > 0 {
                        self.changeButtonTitle()
                        self.count -= 1 }
                    if let _ = $0.value {
                        ApplicantsBio.sharedInstance.awardName[2] = $0.value!
                    }
                    else{ ApplicantsBio.sharedInstance.awardName[2] = ""}
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
                $0.value = ApplicantsBio.sharedInstance.date[2]
                $0.onChange {
                    if let _ = $0.value{
                        if  ApplicantsBio.sharedInstance.date[2] == nil {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    } else if (self.count-1) > 0 { self.count -= 1 }
                    if let _ = $0.value {
                        ApplicantsBio.sharedInstance.date[2] = $0.value!
                    }
                    else{ ApplicantsBio.sharedInstance.date[2] = nil }
                }
            }
            <<< TextRow(){
                $0.title = "Awarded For"
                $0.value = ApplicantsBio.sharedInstance.awardFor[2]
                $0.onChange {
                    if let str = $0.value{
                        if  ApplicantsBio.sharedInstance.awardFor[2].count == 0 && str.count > 0 {
                            self.changeButtonTitle()
                            self.count += 1
                        }
                    } else if (self.count-1) > 0 {
                        self.changeButtonTitle()
                        self.count -= 1 }
                    if let _ = $0.value {
                        ApplicantsBio.sharedInstance.awardFor[2] = $0.value!
                    }
                    else{ ApplicantsBio.sharedInstance.awardFor[2] = ""} }
        }
    }
    
    @objc func saveDidClick(){
        do {
            let value = try JSONEncoder().encode(ApplicantsBio.sharedInstance)
            UserDefaults.standard.set(value, forKey: "ApplicantsData\(User.sharedInstance.email)")
        }
        catch { print(error) }
    }
    
    func changeButtonTitle(){
        if count == 39 {
            self.navigationItem.rightBarButtonItem?.title = "Next"
            self.loadViewIfNeeded()
        } else if count == 40 {
            self.navigationItem.rightBarButtonItem?.title = "Save"
            self.loadViewIfNeeded()
        }
    }

}
