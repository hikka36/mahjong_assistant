//
//  SecondViewController.swift
//  mahjong_assistant
//
//  Created by 平岡煌琉 on 2020/11/20.
//

import UIKit

class SecondViewController: UIViewController {
    
    var Array = [String]()
    @IBOutlet var kyokuhonda: UILabel!
    @IBOutlet var player1name: UILabel!
    @IBOutlet var player2name: UILabel!
    @IBOutlet var player3name: UILabel!
    @IBOutlet var player4name: UILabel!
    @IBOutlet var player1ie: UILabel!
    @IBOutlet var player2ie: UILabel!
    @IBOutlet var player3ie: UILabel!
    @IBOutlet var player4ie: UILabel!
    @IBOutlet var player1score: UILabel!
    @IBOutlet var player2score: UILabel!
    @IBOutlet var player3score: UILabel!
    @IBOutlet var player4score: UILabel!
    @IBOutlet var stackview1: UIStackView!
    @IBOutlet var stackview2: UIStackView!
    @IBOutlet var stackview3: UIStackView!
    @IBOutlet var stackview4: UIStackView!
    var sentscore: Int = 0
    var player1: Int = 25000
    var player2: Int = 25000
    var player3: Int = 25000
    var player4: Int = 25000

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Array = ["東家","南家","西家","北家"]
        stackview2.transform = CGAffineTransform(rotationAngle: -CGFloat.pi / 2)
        stackview3.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
        stackview4.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 2)
        perfromsegueToSetting()
        
        player1score.text = String(player1)
        player2score.text = String(player2)
        player3score.text = String(player3)
        player4score.text = String(player4)
        player1name.text = String()
        player2name.text = String()
        player3name.text = String()
        player4name.text = String()
        player1ie.text = String(Array[0])
        player2ie.text = String(Array[1])
        player3ie.text = String(Array[2])
        player4ie.text = String(Array[3])
    }
    
    func perfromsegueToSetting() {
        performSegue(withIdentifier: "toSettingView", sender: nil)
    }
    
    
    
    @IBAction func unwindToViewController(segue: UIStoryboardSegue) {
        count()
    }
    
    func count() {
        player1 - sentscore
        player1score.text = String(player1)
        
        player2 + sentscore
        player2score.text = String(player2)
    }
    
    func count2() {
        player1 + sentscore
        player2 - (sentscore / 4)
        player3 - (sentscore / 2)
        player4 - (sentscore / 4)
    }
    
    @IBAction func horaButton() {
        let alert: UIAlertController = UIAlertController(title: "和了", message: "和了者の人数を選択", preferredStyle:  UIAlertControllerStyle.ActionSheet)
        
        let defaultAction_1: UIAlertAction = UIAlertAction(title: "1人が和了", style: UIAlertActionStyle.Default, handler:{
            (action: UIAlertAction!) -> Void in
        })
        let defaultAction_2: UIAlertAction = UIAlertAction(title: "2人が和了", style: UIAlertActionStyle.Default, handler:{
            (action: UIAlertAction!) -> Void in
        })
        let defaultAction_3: UIAlertAction = UIAlertAction(title: "3人が和了", style: UIAlertActionStyle.Default, handler:{
            (action: UIAlertAction!) -> Void in
        })

        // Cancelボタン
        let cancelAction: UIAlertAction = UIAlertAction(title: "キャンセル", style: UIAlertActionStyle.Cancel, handler:{
            (action: UIAlertAction!) -> Void in
        })
    }

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
