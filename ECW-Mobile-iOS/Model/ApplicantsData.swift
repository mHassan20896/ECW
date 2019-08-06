//
//  ApplicantsBio.swift
//  ECW-Mobile-iOS
//
//  Created by Muhammad Hassan Shakeel on 31/07/2019.
//  Copyright © 2019 ECW. All rights reserved.
//

import Foundation
import UIKit

class ApplicantsData: Codable {
    
    var yourImage: Data? = nil
    var yourName = ""
    var yourGender = ""
    var yourCell = ""
    var yourNIC = ""
    var yourEmail = ""
    var yourStreetAddress1 = ""
    var yourStreetAddress2 = ""
    var yourCity = ""
    var yourzcountry = ""
    var yourTelephone = ""
    var yourDOB: Date? = nil
    var yourContribution = ""
    
    //guardian information
    var GuardianName = ""
    var relationshipToYou = ""
    var employmentStatus = ""
    var guardianGender = ""
    var guardianStreetAddress1 = ""
    var guardianStreetAddress2 = ""
    var guardianCity = ""
    var guardianCountry = ""
    var guardianTelephone = ""
    var guardianCell = ""
    var guardianNIC = ""
    var guardianEmail = ""
    var guardianDOB: Date? = nil
    var guardianContribution = ""
    var guardiansResidentialAddress = ""
    
    // Academic information
    var organization = ""
    var majorIn = ""
    var badgeOf = ""
    var currentSemester = ""
    var courseStartDate: Date? = nil
    var courseEndDate: Date? = nil
    var CGPA = ""
    var enrolement = ""
    var courseAttended = ""
    var totalCourses = ""
    
    //other attended organizations
    var attendedOrgName: [String] = ["","",""]
    var attendedOrgTo: [Date?] = [nil,nil,nil]
    var attendedOrgFrom: [Date?] = [nil,nil,nil]
    
    //academic honors
    var awardName: [String] = ["","",""]
    var date: [Date?] = [nil,nil,nil]
    var awardFor: [String] = ["","",""]
    
    //Family Whereabouts
    
    var fathersName = ""
    var fathersOccupation = ""
    var fathersContribution = ""
    var fathersEmail = ""
    var fathersCellNo = ""
    
    var mothersName = ""
    var mothersOccupation = ""
    var mothersContribution = ""
    var mothersEmail = ""
    var motherscellNo = ""
    
    var guardiansOccupation = ""
    
    var yourNumber = ""
    
    var sibling1Name = ""
    var sibling1Occupation = ""
    var sibling1Contribution = ""
    var sibling1Email = ""
    var sibling1cellNo = ""
    
    var sibling2Name = ""
    var sibling2Occupation = ""
    var sibling2Contribution = ""
    var sibling2Email = ""
    var sibling2cellNo = ""
    
    var isOwner = ""
    
    //marksheet update
    var semester = ""
    var courseNo = ""
    var courseName = ""
    var marksAttained = ""
    var GPA = ""
    
    static var sharedInstance = ApplicantsData()
}


