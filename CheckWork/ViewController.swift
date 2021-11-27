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
    }
    
    @IBAction func add() {
        /* ここに何か書く */
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        /* ここに何か書く */
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        /* ここに何か書く */
    }

}

