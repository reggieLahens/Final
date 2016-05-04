//
//  NoteDetailViewController.swift
//  Ideas
//
//  Created by Student on 5/3/16.
//  Copyright © 2016 shp. All rights reserved.
//

import UIKit

class NoteDetailViewController: UIViewController {

    var note: Note!
    
    @IBOutlet weak var titleTextField: UITextField!
    
    @IBOutlet weak var contentTextField: UITextView!
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        titleTextField.text! = note.title
        contentTextField.text! = note.content
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        
        note.title = titleTextField.text!
        note.content = contentTextField.text!
    }

}

