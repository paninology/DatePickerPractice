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
        
        if #available(iOS 15.0, *) {
            dateCal()
        } else {
            // Fallback on earlier versions
        }
        
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
            dDayLabels[n].font = .preferredFont(forTextStyle: .headline)
            centerLabels[n].textColor = .white
            centerLabels[n].textAlignment = .center
        }
    }
    
    @available(iOS 15.0, *)
    func dateCal() {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy년 \n MM월 dd일"
        
        centerLabels[0].text =
        formatter.string(from: Date())
        
//        Date().formatted(date: .abbreviated, time: .omitted)
        
        centerLabels[1].text = Date().addingTimeInterval(60*60*24*100).formatted(date: .complete, time: .shortened)
        centerLabels[2].text = Date().addingTimeInterval(3600*24*200).formatted(date: .long, time: .omitted)
        centerLabels[3].text = Date().addingTimeInterval(3600*24*300).formatted(date: .numeric, time: .standard)
    }
    
    

//    func datePickerStyleSet() {
//  if #available(iOS 14.0, *) {
//    datePicker.preferredDatePickerStyle = .inline
//}
//    }

}

