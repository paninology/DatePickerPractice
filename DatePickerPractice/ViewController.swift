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
    
    var dateForDDay = Date()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        if #available(iOS 14.0, *) {
            datePicker.preferredDatePickerStyle = .inline
        }
        imageSetting()
        labelSetting()
        
        var dateFormat = DateFormatter()
        dateFormat.dateFormat = "yyyy/MM/dd"
        let word = "2019/12/10"  //위와 같아야댐 형식
        let dateResult = dateFormat.date(from: word)
        print(dateResult)
        
        
        if #available(iOS 15.0, *) {
            dateCal()
        } else {
            //dateCal 15이전 버전 가능하게 수정할것.
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
        formatter.string(from: dateForDDay.addingTimeInterval(3600*24*100))
//        Date().formatted(date: .abbreviated, time: .omitted)
        centerLabels[1].text = dateForDDay.addingTimeInterval(60*60*24*200).formatted(date: .complete, time: .shortened)
        centerLabels[2].text = dateForDDay.addingTimeInterval(3600*24*300).formatted(date: .long, time: .omitted)
        centerLabels[3].text = dateForDDay.addingTimeInterval(3600*24*400).formatted(date: .numeric, time: .standard)
    }
    
    @IBAction func dateValueChanged(_ sender: UIDatePicker) {
        
        dateForDDay = sender.date
        if #available(iOS 15.0, *) {
            dateCal()
        } else {
            
        }
    }
    

//    func datePickerStyleSet() {
//  if #available(iOS 14.0, *) {
//    datePicker.preferredDatePickerStyle = .inline
//}
//    }

}

