//
//  HomeViewController.swift
//  MemoTra
//
//  Created by 伊藤寛晃 on 2016/10/25.
//  Copyright © 2016年 Hiroaki_Ito. All rights reserved.
//

import UIKit
import RealmSwift

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var postArray: [PostData] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // テーブルセルのタップを無効にする
        tableView.delegate = self   // 北島追加
        tableView.dataSource = self // 北島追加
        tableView.allowsSelection = false
        
        let nib = UINib(nibName: "PostTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "Cell")
        tableView.rowHeight = UITableViewAutomaticDimension
        }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let realm = try! Realm()
        //let allPostData = realm.allObjects()
        let allPostData = realm.objects(PostData.self).map{$0}
        for PostData in allPostData {
            postArray.append(PostData)
        }
    tableView.reloadData()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // TableView Delegate   // 以下、北島追加
    // セルの行数
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Realmからデータ件数を取得（仮にhogeとします。）
        return postArray.count
    }
    
    // 各セルの内容を返すメソッド
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: PostTableViewCell = PostTableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: "Cell")
        cell.setPostData(postData: postArray[indexPath.row])
        // Realmから取得した該当行のデータをcellに設定
        return cell
    }
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        // Auto Layoutを使ってセルの高さを動的に変更する
        return UITableViewAutomaticDimension
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // セルをタップされたら何もせずに選択状態を解除する
        tableView.deselectRow(at: indexPath as IndexPath, animated: true)
    }
}
