//
//  player.swift
//  mahjong_assistant
//
//  Created by 平岡煌琉 on 2020/12/03.
//

import UIKit
import RealmSwift
import Realm

class player: Object {
    dynamic var player1name = ""
    dynamic var player2name = ""
    dynamic var player3name = ""
    dynamic var player4name = ""
    dynamic var player1score: Int = 0
    dynamic var player2score: Int = 0
    dynamic var player3score: Int = 0
    dynamic var player4score: Int = 0
    
}

