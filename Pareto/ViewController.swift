//
//  ViewController.swift
//  Pareto
//
//  Created by Zulfa Aliyah on 15/04/20.
//  Copyright © 2020 Zulfa Aliyah. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {
    func getNotification() {
        
      UNUserNotificationCenter.current().delegate = self

        //content
        let content = UNMutableNotificationContent()
        content.title = "What time is it?"
        content.body = "It's time to achieve your goal!"
        content.sound = UNNotificationSound.default
        
        //triger
        let myDate = Date().addingTimeInterval(5)
        let dateComponent = Calendar.current.dateComponents([.year,.month,.day,.hour,.minute,.second], from: myDate)
        let triger = UNCalendarNotificationTrigger(dateMatching: dateComponent, repeats: false)
        
        //req
        let req = UNNotificationRequest(identifier: "cobaNotif", content: content, trigger: triger)
        
        //put it to center notif
        UNUserNotificationCenter.current().add(req) { (error) in
            if let error = error {  
                print("error ",error)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getNotification()
    
        // Do any additional setup after loading the view.
    }


}

extension ViewController : UNUserNotificationCenterDelegate{
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        completionHandler([.sound,.alert])
    }

}

extension UIView {
    
    @IBInspectable
    var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
        }
    }
    
    @IBInspectable
    var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable
    var borderColor: UIColor? {
        get {
            if let color = layer.borderColor {
                return UIColor(cgColor: color)
            }
            return nil
        }
        set {
            if let color = newValue {
                layer.borderColor = color.cgColor
            } else {
                layer.borderColor = nil
            }
        }
    }
    
    @IBInspectable
    var shadowRadius: CGFloat {
        get {
            return layer.shadowRadius
        }
        set {
            layer.shadowRadius = newValue
        }
    }
    
    @IBInspectable
    var shadowOpacity: Float {
        get {
            return layer.shadowOpacity
        }
        set {
            layer.shadowOpacity = newValue
        }
    }
    
    @IBInspectable
    var shadowOffset: CGSize {
        get {
            return layer.shadowOffset
        }
        set {
            layer.shadowOffset = newValue
        }
    }
    
    @IBInspectable
    var shadowColor: UIColor? {
        get {
            if let color = layer.shadowColor {
                return UIColor(cgColor: color)
            }
            return nil
        }
        set {
            if let color = newValue {
                layer.shadowColor = color.cgColor
            } else {
                layer.shadowColor = nil
            }
        }
    }
}





