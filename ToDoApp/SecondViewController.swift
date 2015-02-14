//
//  SecondViewController.swift
//  ToDoApp
//
//  Created by Jiangyue Zhu on 2/14/15.
//  Copyright (c) 2015 Jiangyue Zhu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var name: UITextField!
    @IBOutlet var desc: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    //UITextField Delegate
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true;
    }

    @IBAction func addTaskClicked(sender: UIButton) {
        taskManager.addTask(name.text, desc: desc.text)
        self.view.endEditing(true)
        name.text = ""
        desc.text = ""
        self.tabBarController?.selectedIndex = 0
    }

}

