//
//  ViewController.swift
//  CollectionTableXIB
//
//  Created by MacMiniOld on 26/10/18.
//  Copyright © 2018 Xongolab. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
   
    
    @IBOutlet var TblView: UITableView!
    let labelarray = ["abc","cde","efg","hij","klm","nop","qrst","uvwx","yxz","dfdf","dff"]
    let labelarray1 = ["abc","cde","efg","hij","klm","nop","qrst","uvwx","yxz","dfdf","dff"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TblView.delegate = self
        TblView.dataSource = self
        TblView.rowHeight = 200
        let nib = UINib.init(nibName: "TableViewCell", bundle: nil)
        self.TblView.register(nib, forCellReuseIdentifier: "TableViewCell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return labelarray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:TableViewCell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        cell.LblFirst.text = labelarray[indexPath.row]
        cell.TempLblSecond.text = labelarray1[indexPath.row]
        return cell
    }

}

