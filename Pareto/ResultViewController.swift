//
//  ResultViewController.swift
//  Pareto
//
//  Created by Zulfa Aliyah on 15/04/20.
//  Copyright © 2020 Zulfa Aliyah. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var goalLabel: UILabel!
    @IBOutlet weak var doLabel: UILabel!
    
    var goal = ""
    var done = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        goalLabel.text = goal
        doLabel.text = done
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
