//
//  ViewController.swift
//  CollectionView
//
//  Created by LLEEJONG on 2017. 10. 8..
//  Copyright © 2017년 LLEEJONG. All rights reserved.
//

import Cocoa

class ViewController: NSViewController, NSCollectionViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    func collectionView(_ collectionView: NSCollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: NSCollectionView, itemForRepresentedObjectAt indexPath: IndexPath) -> NSCollectionViewItem {
        let item = collectionView.makeItem(withIdentifier: NSUserInterfaceItemIdentifier("LabelCollectionViewItem"), for: indexPath)
        return item
    }


}

