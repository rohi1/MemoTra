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
        tableView.delegate = self   
        tableView.dataSource = self
        tableView.allowsSelection = false
        tableView.register(
            UINib(nibName: MemoTableViewCell.className, bundle: nil),
            forCellReuseIdentifier: MemoTableViewCell.className
        )
        
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
        
        print("Realmmmmmmm URL = \(Realm.Configuration().fileURL?.absoluteString)")
        
        tableView.reloadData()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // TableView Delegate   
    // セルの行数
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Realmからデータ件数を取得（仮にhogeとします。）
        return postArray.count
    }

    
    // 各セルの内容を返すメソッド
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let memoTableViewCell = tableView.dequeueReusableCell(withIdentifier: MemoTableViewCell.className) as? MemoTableViewCell else {
            return UITableViewCell()
        }
        memoTableViewCell.setPostData(postData: postArray[indexPath.row])
        // Realmから取得した該当行のデータをcellに設定
        return memoTableViewCell
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
