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
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Save", style: .plain, target: self, action: "saveDidClick")

        form
        +++ Section("Applicant Personal Information")
            <<< TextRow() {
                $0.title = "Applicant Name"
                $0.placeholder = "Enter Your Full Name"
                $0.onChange { [unowned self] row in
                    print(row.value)
                }
        }
            <<< PushRow<String>() {
                $0.title = "Gender"
                $0.value = "Not Selected"
                $0.options = ["Male","Female"]
                $0.onChange{_ in
                    
                }
        }
            <<< TextRow() {
                $0.title = "Cell #"
                $0.placeholder = "+923XXXXXXXXX"
                $0.onChange { [unowned self] row in
                    print(row.value)
                }
        }
            <<< TextRow() {
                $0.title = "NIC"
                $0.placeholder = "XXXXXXXXXXXXXXXX"
                $0.onChange { [unowned self] row in
                    print(row.value)
                }
            }
            <<< TextRow() {
                $0.title = "Email"
                $0.placeholder = "abc@xyz.com"
                $0.onChange { [unowned self] row in
                    print(row.value)
                }
        }
            <<< DateRow(){
                $0.title = "Date of Birth"
                $0.maximumDate = Date()
                $0.onChange {_ in
                    
                }
        }
        
        +++ Section("Permanent (Home) Address")
            <<< TextRow() {
                $0.title = "Street Adress 1"
                $0.placeholder = "Click to Enter"
                $0.onChange { [unowned self] row in
                    print(row.value)
                }
            }
            <<< TextRow() {
                $0.title = "Street Adress 2"
                $0.placeholder = "Click to Enter"
                $0.onChange { [unowned self] row in
                    print(row.value)
                }
            }
            <<< TextRow() {
                $0.title = "City"
                $0.placeholder = "XXXXXXXXXXXXXXXX"
                $0.onChange { [unowned self] row in
                    print(row.value)
                }
            }
            <<< TextRow() {
                $0.title = "Country"
                $0.placeholder = "abc@xyz.com"
                $0.onChange { [unowned self] row in
                    print(row.value)
                }
            }
            <<< TextRow() {
                $0.title = "Telephone #"
                $0.placeholder = "Click to Enter"
                $0.onChange { [unowned self] row in
                    print(row.value)
                }
        }
        
        +++ Section("Guardian / Father Details")
            <<< TextRow() {
                $0.title = "Guardian / Father Name"
                $0.placeholder = "Enter Guardian / Father Full Name"
                $0.onChange { [unowned self] row in
                    print(row.value)
                }
            }
            <<< PushRow<String>() {
                $0.title = "Gender"
                $0.value = "Not Selected"
                $0.options = ["Male","Female"]
                $0.onChange{_ in
                    
                }
            }
            <<< TextRow() {
                $0.title = "Cell #"
                $0.placeholder = "+923XXXXXXXXX"
                $0.onChange { [unowned self] row in
                    print(row.value)
                }
            }
            <<< TextRow() {
                $0.title = "NIC"
                $0.placeholder = "XXXXXXXXXXXXXXXX"
                $0.onChange { [unowned self] row in
                    print(row.value)
                }
            }
            <<< TextRow() {
                $0.title = "Email"
                $0.placeholder = "abc@xyz.com"
                $0.onChange { [unowned self] row in
                    print(row.value)
                }
            }
            <<< DateRow(){
                $0.title = "Date of Birth"
                $0.maximumDate = Date()
                $0.onChange {_ in
                    
                }
        }
        
    }
    
    @objc func saveDidClick(){
        
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
