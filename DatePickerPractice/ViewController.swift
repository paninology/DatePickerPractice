//
//  ViewController.swift
//  DatePickerPractice
//
//  Created by yongseok lee on 2022/07/13.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBOutlet var imageViews: [UIImageView]!
    
    @IBOutlet var backgroundImages: [UIImageView]!
    
    @IBOutlet var dDayLabels: [UILabel]!
    
    @IBOutlet var centerLabels: [UILabel]!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        datePicker.preferredDatePickerStyle = .wheels
        
        
       
        datePicker.preferredDatePickerStyle = .inline
        
        
        
        
    }


}

