//
//  NextViewController.swift
//  DelegateTest
//
//  Created by iOS on 2018/2/27.
//  Copyright © 2018年 iOS. All rights reserved.
//

import UIKit

protocol NextViewControllerProtocol: NSObjectProtocol {
    func callBack(string: String)
}

class NextViewController: UIViewController {

    @IBOutlet weak var ContentStr: UILabel!
    weak var delegate:NextViewControllerProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    class func instance() -> NextViewController {
        let storeB = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = storeB.instantiateViewController(withIdentifier: "NextViewController") as! NextViewController
        return vc
    }
    
    @IBAction func back(_ sender: UIButton) {
        delegate?.callBack(string: ContentStr.text ?? "没有数据")
        dismiss(animated: true) {}
    }
}
