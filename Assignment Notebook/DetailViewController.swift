//
//  DetailViewController.swift
//  Assignment Notebook
//
//  Created by Avery Zakson on 1/15/20.
//  Copyright © 2020 mojo. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var subjectTextField: UITextField!
    @IBOutlet weak var dueDateTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextField!
    @IBOutlet weak var assignmentTextField: UITextField!
    
    var detailItem: TaskManager? {
        didSet{
            configureView()
        }
    }
    
    func configureView() {
        // Update the user interface for the detail item
        if let TaskManager = self.detailItem {
            if subjectTextField != nil {
                subjectTextField.text = TaskManager.subject
                descriptionTextField.text = TaskManager.description
                dueDateTextField.text = String(TaskManager.dueDate)
                assignmentTextField.text = TaskManager.assignment
            }
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureView()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        if let TaskManager = self.detailItem {
            TaskManager.subject = subjectTextField.text!
            TaskManager.description = descriptionTextField.text!
            TaskManager.dueDate = dueDateTextField.text!
            TaskManager.assignment = assignmentTextField.text!
        }
    }
    
}

