 //
 //  ViewController.swift
 //  03.TableView
 //
 //  Created by LLEEJONG on 2017. 10. 8..
 //  Copyright © 2017년 LLEEJONG. All rights reserved.
 //
 
 import Cocoa
 
 class ViewController: NSViewController, NSTableViewDataSource, NSTextFieldDelegate{
    
    var strings = ["apple","banana", "orange", "watermelon"]
    
    @IBOutlet weak var textField: NSTextField!
    @IBOutlet weak var tableView: NSTableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override var representedObject: Any? {
        didSet {
            // Update the view, if already loaded.
        }
    }
    
    @IBAction func addFruit(_ sender: Any?) {
        let string = textField.stringValue
        if(string != ""){
            strings.append(string)
            textField.stringValue = ""
            tableView.reloadData()
        }
    }
    // MARK : DataSource
    func numberOfRows(in tableView: NSTableView) -> Int {
        return strings.count
    }
    
    func tableView(_ tableView: NSTableView, objectValueFor tableColumn: NSTableColumn?, row: Int) -> Any? {
        return strings[row]
    }
    
    // MARK : Delegate
    override func controlTextDidEndEditing(_ obj: Notification) {
        addFruit(nil)
    }
 }
 
