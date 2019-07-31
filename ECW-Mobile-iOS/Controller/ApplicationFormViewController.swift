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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .plain, target: self, action: "saveDidClick")
        
        form
        +++ Section("Applicant Personal Information")
            <<< TextRow() {
                $0.title = "Applicant Name"
                $0.placeholder = "Enter Your Full Name"
                $0.value = ApplicantsBio.sharedInstance.name
                $0.onChange { ApplicantsBio.sharedInstance.name = $0.value! }
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
                $0.onChange{ ApplicantsBio.sharedInstance.gender = $0.value! }
        }
            <<< TextRow() {
                $0.title = "Cell #"
                $0.placeholder = "+923XXXXXXXXX"
                $0.value = ApplicantsBio.sharedInstance.cell
                $0.onChange { ApplicantsBio.sharedInstance.cell = $0.value! }
        }
            <<< TextRow() {
                $0.title = "NIC"
                $0.placeholder = "XXXXXXXXXXXXXXXX"
                $0.value = ApplicantsBio.sharedInstance.NIC
                $0.onChange { ApplicantsBio.sharedInstance.NIC = $0.value! }
            }
            <<< TextRow() {
                $0.title = "Email"
                $0.placeholder = "abc@xyz.com"
                $0.value = ApplicantsBio.sharedInstance.email
                $0.onChange { ApplicantsBio.sharedInstance.email = $0.value! }
        }
            <<< DateRow(){
                $0.title = "Date of Birth"
                $0.maximumDate = Date()
                $0.value = ApplicantsBio.sharedInstance.DOB
                $0.onChange { ApplicantsBio.sharedInstance.DOB = $0.value! }
        }
        
        +++ Section("Permanent (Home) Address")
            <<< TextRow() {
                $0.title = "Street Adress 1"
                $0.placeholder = "Click to Enter"
                $0.value = ApplicantsBio.sharedInstance.streetAddress1
                $0.onChange { ApplicantsBio.sharedInstance.streetAddress1 = $0.value! }
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
                $0.onChange { ApplicantsBio.sharedInstance.streetAddress2 = $0.value! }
            }
            <<< TextRow() {
                $0.title = "City"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsBio.sharedInstance.city
                $0.onChange { ApplicantsBio.sharedInstance.city = $0.value! }
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
                $0.onChange { ApplicantsBio.sharedInstance.country = $0.value! }
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
                $0.onChange { ApplicantsBio.sharedInstance.telephone = $0.value! }
        }
        
        +++ Section("Guardian / Father Details")
            <<< TextRow() {
                $0.title = "Guardian / Father Name"
                $0.placeholder = "Enter Guardian / Father Full Name"
                $0.value = ApplicantsBio.sharedInstance.GuardianName
                $0.onChange { ApplicantsBio.sharedInstance.GuardianName = $0.value! }
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
                $0.onChange { ApplicantsBio.sharedInstance.guardianGender = $0.value! }
            }
            <<< TextRow() {
                $0.title = "Relationship to You"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsBio.sharedInstance.relationshipToYou
                $0.onChange { ApplicantsBio.sharedInstance.relationshipToYou = $0.value! }
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
                $0.onChange { ApplicantsBio.sharedInstance.employmentStatus = $0.value! }
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
                $0.onChange { ApplicantsBio.sharedInstance.guardianStreetAddress1 = $0.value! }
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
                $0.onChange { ApplicantsBio.sharedInstance.guardianStreetAddress2 = $0.value! }
            }
            <<< TextRow() {
                $0.title = "City"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsBio.sharedInstance.guardianCity
                $0.onChange { ApplicantsBio.sharedInstance.guardianCity = $0.value! }
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
                $0.onChange { ApplicantsBio.sharedInstance.guardianCountry = $0.value! }
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
                $0.onChange { ApplicantsBio.sharedInstance.guardianTelephone = $0.value! }
            }
            <<< DateRow(){
                $0.title = "Date of Birth"
                $0.maximumDate = Date()
                $0.onChange {_ in
                    
                }
        }
            
        +++ Section("Academic Information")
            <<< TextRow() {
                $0.title = "University/ Institute/ School"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsBio.sharedInstance.organization
                $0.onChange { ApplicantsBio.sharedInstance.organization = $0.value! }
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
                $0.onChange { ApplicantsBio.sharedInstance.majorIn = $0.value! }
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
                $0.onChange { ApplicantsBio.sharedInstance.badgeOf = $0.value! }
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
                $0.onChange { ApplicantsBio.sharedInstance.currentSemester = $0.value! }
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
                $0.onChange { ApplicantsBio.sharedInstance.courseStartDate = $0.value! }
            }
            <<< DateRow(){
                $0.title = "Program / Course End Date"
                $0.value = ApplicantsBio.sharedInstance.courseEndDate
                $0.onChange { ApplicantsBio.sharedInstance.courseEndDate = $0.value! }
            }
            <<< TextRow() {
                $0.title = "CGPA / %"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsBio.sharedInstance.CGPA
                $0.onChange { ApplicantsBio.sharedInstance.CGPA = $0.value! }
            }
            <<< TextRow() {
                $0.title = "Enrollment #"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsBio.sharedInstance.enrolement
                $0.onChange { ApplicantsBio.sharedInstance.enrolement = $0.value! }
            }
            <<< TextRow() {
                $0.title = "Total Courses attended"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsBio.sharedInstance.courseAttended
                $0.onChange { ApplicantsBio.sharedInstance.courseAttended = $0.value! }
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
                $0.onChange { ApplicantsBio.sharedInstance.totalCourses = $0.value! }
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
    }
    
    @objc func saveDidClick(){
        do {
            let value = try JSONEncoder().encode(ApplicantsBio.sharedInstance)
            UserDefaults.standard.set(value, forKey: "ApplicantsData")
        }
        catch { print(error) }
    }

    // MARK: - Table view data source
//
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return 0
//    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
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
