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

    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.title = "Family Whereabouts Form"
        
        form
        +++ Section("Candidate Details")
        <<< TextRow() {
            $0.title = "Your contribution to Household Income"
            $0.placeholder = "Tap to Enter"
            $0.value = ApplicantsBio.sharedInstance.name
            $0.onChange {
                $0.value = "0"
            }
        }
        
        +++ Section("Candidate Family Details")
            <<< TextRow() {
                $0.title = "Father Name"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsBio.sharedInstance.name
                $0.onChange {
                    $0.value = "0"
                }
        }
            <<< TextRow() {
                $0.title = "Father Occupation"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsBio.sharedInstance.name
                $0.onChange {
                    $0.value = "0"
                }
            }
            <<< TextRow() {
                $0.title = "Contribution to Household Income"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsBio.sharedInstance.name
                $0.onChange {
                    $0.value = "0"
                }
        }
            <<< TextRow() {
                $0.title = "Email Address"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsBio.sharedInstance.name
                $0.onChange {
                    $0.value = "0"
                }
        }
            <<< TextRow() {
                $0.title = "Cell #"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsBio.sharedInstance.name
                $0.onChange {
                    $0.value = "0"
                }
        }
            
            <<< TextRow() {
                $0.title = "Mother Name"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsBio.sharedInstance.name
                $0.onChange {
                    $0.value = "0"
                }
            }
            <<< TextRow() {
                $0.title = "Mother Occupation"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsBio.sharedInstance.name
                $0.onChange {
                    $0.value = "0"
                }
            }
            <<< TextRow() {
                $0.title = "Contribution to Household Income"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsBio.sharedInstance.name
                $0.onChange {
                    $0.value = "0"
                }
            }
            <<< TextRow() {
                $0.title = "Email Address"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsBio.sharedInstance.name
                $0.onChange {
                    $0.value = "0"
                }
            }
            <<< TextRow() {
                $0.title = "Cell #"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsBio.sharedInstance.name
                $0.onChange {
                    $0.value = "0"
                }
        }
        
            <<< TextRow() {
                $0.title = "Guardian Name"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsBio.sharedInstance.name
                $0.onChange {
                    $0.value = "0"
                }
            }
            <<< TextRow() {
                $0.title = "Guardian Occupation"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsBio.sharedInstance.name
                $0.onChange {
                    $0.value = "0"
                }
            }
            <<< TextRow() {
                $0.title = "Guardian relationship to you"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsBio.sharedInstance.name
                $0.onChange {
                    $0.value = "0"
                }
            }
            <<< TextRow() {
                $0.title = "Contribution to Household Income"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsBio.sharedInstance.name
                $0.onChange {
                    $0.value = "0"
                }
            }
            <<< TextRow() {
                $0.title = "Email Address"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsBio.sharedInstance.name
                $0.onChange {
                    $0.value = "0"
                }
            }
            <<< TextRow() {
                $0.title = "Residential Address"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsBio.sharedInstance.name
                $0.onChange {
                    $0.value = "0"
                }
            }
            <<< TextRow() {
                $0.title = "Cell #"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsBio.sharedInstance.name
                $0.onChange {
                    $0.value = "0"
                }
        }
            
            <<< TextRow() {
                $0.title = "Your Number in the family"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsBio.sharedInstance.name
                $0.onChange {
                    $0.value = "0"
                }
            }
            
            <<< TextRow() {
                $0.title = "Sibling1 Name"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsBio.sharedInstance.name
                $0.onChange {
                    $0.value = "0"
                }
            }
            <<< TextRow() {
                $0.title = "Sibling1 Occupation"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsBio.sharedInstance.name
                $0.onChange {
                    $0.value = "0"
                }
            }
            <<< TextRow() {
                $0.title = "Contribution to Household Income"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsBio.sharedInstance.name
                $0.onChange {
                    $0.value = "0"
                }
            }
            <<< TextRow() {
                $0.title = "Email Address"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsBio.sharedInstance.name
                $0.onChange {
                    $0.value = "0"
                }
            }
            <<< TextRow() {
                $0.title = "Cell #"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsBio.sharedInstance.name
                $0.onChange {
                    $0.value = "0"
                }
        }
        
            <<< TextRow() {
                $0.title = "Sibling2 Name"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsBio.sharedInstance.name
                $0.onChange {
                    $0.value = "0"
                }
            }
            <<< TextRow() {
                $0.title = "Sibling2 Occupation"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsBio.sharedInstance.name
                $0.onChange {
                    $0.value = "0"
                }
            }
            <<< TextRow() {
                $0.title = "Contribution to Household Income"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsBio.sharedInstance.name
                $0.onChange {
                    $0.value = "0"
                }
            }
            <<< TextRow() {
                $0.title = "Email Address"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsBio.sharedInstance.name
                $0.onChange {
                    $0.value = "0"
                }
            }
            <<< TextRow() {
                $0.title = "Cell #"
                $0.placeholder = "Tap to Enter"
                $0.value = ApplicantsBio.sharedInstance.name
                $0.onChange {
                    $0.value = "0"
                }
        }
        
        +++ Section("Financial Details")
            <<< PushRow<String>() {
                $0.title = "Is the place you live in Rented or Owned?"
                $0.value = "Not Selected"
                $0.options = ["Rented","Owned"]
                $0.value = ApplicantsBio.sharedInstance.gender
                $0.onChange{
                    $0.value = ""
            }
        }
    }
    
    func changeButtonTitle(){
        
    }

}
