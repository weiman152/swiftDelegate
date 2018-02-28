//
//  ViewController.swift
//  DelegateTest
//
//  Created by iOS on 2018/2/27.
//  Copyright © 2018年 iOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var showTextLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextAction(_ sender: UIButton) {
        let vc = NextViewController.instance()
        vc.delegate = self
        present(vc, animated: true) {}
    }
    
}

extension ViewController: NextViewControllerProtocol {
    func callBack(string: String) {
        showTextLabel.text = string
    }
}

