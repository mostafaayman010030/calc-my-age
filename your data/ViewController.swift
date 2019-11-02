//
//  ViewController.swift
//  your data
//
//  Created by Moustafa on 10/13/19.
//  Copyright © 2019 Moustafa Ayman Ahmed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var laageinyears: UILabel!
    @IBOutlet weak var laageinmonth: UILabel!
    @IBOutlet weak var laageindayes: UILabel!
    @IBOutlet weak var datepicker: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func getmyage(_ sender: Any) {
        let currentdate=Date()
        let userddb=datepicker.date
        let calender=Calendar.current
        let componant=calender.dateComponents( [Calendar.Component.day], from:userddb ,to:currentdate)
        let years:Int=Int(componant.day! / 365)
        let month:Int=Int((componant.day!-(years*365))/30)
        let dayes:Int=Int(componant.day!-((years*365)+(month*30)))
        laageinyears.text="\(years) year"
        laageinmonth.text="\(month) month"
        laageindayes.text="\(dayes) day"
    }
    
    
    
    
    
}

