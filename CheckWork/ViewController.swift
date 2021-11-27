//
//  ViewController.swift
//  CheckWork
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let fruitsList = ["りんご", "ぶどう", "ばなな", "さくらんぼ", "ドラゴンフルーツ", "もも", "キウイ", "パイナップル"]
    
    @IBOutlet var tableView: UITableView!
    
    var items = ["りんご", "ぶどう", "ばなな"]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "TestTableViewCell", bundle: nil), forCellReuseIdentifier: "testCell")
    }
    
    @IBAction func add() {
        items.append(fruitsList[Int.random(in: 0..<fruitsList.count)])
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "testCell") as! TestTableViewCell
        cell.setCell(a1: "one", a2: "two")
//        cell?.textLabel?.text = items[indexPath.row]
        return cell
    }

}

