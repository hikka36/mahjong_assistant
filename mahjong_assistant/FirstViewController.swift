//
//  FirstViewController.swift
//  mahjong_assistant
//
//  Created by 平岡煌琉 on 2020/11/30.
//

import UIKit

class FirstViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    var tableView: UITableView = UITableView()
    var horaArray = [String]()
    let headerView:UIView = UIView()
    let label: UILabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        horaArray = ["1人が和了","2人が和了","3人が和了"]
        tableView.delegate = self
        tableView.dataSource = self
        tableView.frame = CGRect(x:0, y:0, width:UIScreen.main.bounds.size.width, height:UIScreen.main.bounds.size.height)
        tableView.isScrollEnabled = false
        tableView.sectionHeaderHeight = 50
        self.view.addSubview(tableView)
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        label.text = "和了者の人数を選択"
        label.textAlignment = .center
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 20)
        label.frame = CGRect(x: 0, y: 0, width: headerView.frame.width, height: headerView.frame.height)
        headerView.addSubview(label)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return horaArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        cell.textLabel?.text = horaArray[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return headerView
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        

    }

}


/*
// MARK: - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    // Get the new view controller using segue.destination.
    // Pass the selected object to the new view controller.
}
*/
