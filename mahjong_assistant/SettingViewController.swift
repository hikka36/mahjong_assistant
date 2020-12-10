//
//  SettingViewController.swift
//  mahjong_assistant
//
//  Created by 平岡煌琉 on 2020/11/30.
//

import UIKit

class SettingViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var player1name: UITextField!
    @IBOutlet weak var player2name: UITextField!
    @IBOutlet weak var player3name: UITextField!
    @IBOutlet weak var player4name: UITextField!
    @IBOutlet weak var tableView: UITableView!
    var ieArray = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.delaysContentTouches = false
        ieArray = ["東家(起家)","南家","西家","北家"]

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        cell?.accessoryType = .none
    }

    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        cell?.accessoryType = .none
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ieArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "\(ieArray[indexPath.row])"
        return cell
    }
    
    @IBAction func OKbutton() {
        let playername = player()
        playername.player1name = tableView[]
        playername.player2name = tableView
        playername.player3name = tableView
        playername.player4name = tableView
        
        do{
            let realm = try Realm()
            try realm.write({ () -> Void in
            realm.add(playername)
            })
        }catch{
        }
    }
    
}
