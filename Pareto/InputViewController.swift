//
//  InputViewController.swift
//  Pareto
//
//  Created by Zulfa Aliyah on 15/04/20.
//  Copyright © 2020 Zulfa Aliyah. All rights reserved.
//

import UIKit

extension UIViewController{
    func hideKeyboard(){
        let tap:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        
        view.addGestureRecognizer(tap)    }
    
    @objc func dismissKeyboard(){
        view.endEditing(true)
    }
}

class InputViewController: UIViewController {
    
    @IBOutlet weak var goalField: UITextView!
    @IBOutlet weak var doField: UITextView!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.hideKeyboard()
    }
    
    
    
    @IBAction func send(_ sender: Any) {
        performSegue(withIdentifier: "segue", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let ResultViewController = segue.destination as! ResultViewController
        ResultViewController.goal = goalField.text!
        ResultViewController.done = doField.text!
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
