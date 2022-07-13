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
       
        if #available(iOS 14.0, *) {
            datePicker.preferredDatePickerStyle = .inline
        }
        imageSetting()
        labelSetting()
        
    }

    
    func imageSetting() {
        for n in 0...(imageViews.count - 1) {
            imageViews[n].layer.cornerRadius = 20
            imageViews[n].clipsToBounds = true
            backgroundImages[n].layer.cornerRadius = 20
            backgroundImages[n].clipsToBounds = true
            backgroundImages[n].alpha = 0.3
            
        }
    }
    
    func labelSetting() {
        for n in 0...(dDayLabels.count - 1) {
            dDayLabels[n].textColor = .white
            centerLabels[n].textColor = .white
            dDayLabels[n].font = .preferredFont(forTextStyle: .headline)
        }
    }
    
    func dateCal() {
        
    }
    
    

//    func datePickerStyleSet() {
//  if #available(iOS 14.0, *) {
//    datePicker.preferredDatePickerStyle = .inline
//}
//    }

}

