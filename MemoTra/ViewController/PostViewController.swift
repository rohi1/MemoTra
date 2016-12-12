import UIKit
import SVProgressHUD
import RealmSwift

class PostViewController: UIViewController {
    
    var image: UIImage!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var TitleTextField: UITextField!
    @IBOutlet weak var TagTextField: UITextField!
    @IBOutlet weak var Comment: UITextView!
    
    //let realm = RLMRealm.defaultRealm()
    let realmDB = PostData()
    var Cell:PostData?
    
    
    //保存ボタンを押した時のメソッド
    @IBAction func SaveButton(_ sender: AnyObject) {

        let tagIdArray = createTag()     //PostDataのtagIdArrayにcreateTagの機能を使う
        
        //postDataに必要な情報を取得しておく
        _ = NSDate.timeIntervalSinceReferenceDate
        
        Cell = PostData()
        
        // データをRealmに保存する
        //try! realm.write {
        //    self.Cell?.title = self.TitleTextField.text!
        //    self.Cell?.comment = self.Comment.text!
        //    self.Cell?.category = self.TagTextField.text!
        //    let data = UIImagePNGRepresentation(self.image)
        //    self.Cell?.imageData = data as NSData?
        //   self.realm.add(self.Cell!, update: true)
        //}
        let realm = try!Realm()
        do {
            // 降順
            let postDataArray = realm.objects(PostData.self).sorted(byProperty: "id", ascending: false)
            var primaryKey: Int = 0
            if postDataArray.count > 0 {
            primaryKey = postDataArray[0].id + 1
            }
                        
            try realm.write {
                realmDB.id = primaryKey
                realmDB.title = self.TitleTextField.text!
                realmDB.comment = self.Comment.text!
                realmDB.tagIdArray = tagIdArray
                
                let data = UIImagePNGRepresentation(self.image)
                realmDB.imageData = data as NSData?
                realm.add(self.realmDB)
            }
            
        } catch {
            
        }
        
        //HUDで投稿完了を表示する
        SVProgressHUD.showSuccess(withStatus: "保存しました")
        
        //全てのモーダルを閉じる
        // UIApplication.shared.keyWindow?.rootViewController?.dismiss(animated: true, completion: nil)
        
        // 画面を閉じる
        dismiss(animated: true, completion: nil)
        
        if let viewController = self.tabBarController?.viewControllers?[0] {
            self.tabBarController?.selectedViewController = viewController
            
            
        }
    }
    func createTag() -> List<IntObject>  {
        let tag = TagTextField.text //入力された文字列を取得する
        let cammalist = tag?.components(separatedBy: ",") //カンマで区切る処理
        let realm = try!Realm()
        let returnValue = List<IntObject>()
        
        //カンマで区切った物の配列を取得してプリント
        for camma in cammalist! {
            print(camma)
            //レルムの中のタグデータの中でタイトルを一致するデータを検索。
            var searchResult = realm.objects(TagData.self).filter("title = '\(camma)'") //カンマで区切った文字列をレルムの中から検索
            if searchResult.count == 0 {   //一致するデータが0の場合
                let tagData = TagData() //インスタンスオブジェクト生成
                tagData.title = camma  //カンマで区切った文字列の配列をタグのタイトルに設定
                let tagDataAll = realm.objects(TagData.self)  //タグのデータを全件取得
                tagData.id = tagDataAll.count //全取得した件数をidに代入
                let intObject = IntObject()
                intObject.value = tagData.id
                returnValue.append(intObject)
                //レルムに書き込み
                try! realm.write {
                    realm.add(tagData)
                }
                
                
            }else {
                let tagData = searchResult.first //検索結果の一番目をタグデータに設定
                let intObject = IntObject()
                intObject.value = (tagData?.id)!
                returnValue.append(intObject)
            }
            
        }
        return returnValue
        
    }
    //キャンセルボタンを押した時のメソッド
    @IBAction func CancelButton(_ sender: AnyObject) {
        // 画面を閉じる
        dismiss(animated: true, completion: nil)
        
        
    }
    
    //受け取った画像をImageViewに反映させる
    override func viewDidLoad() {
        imageView.image = image!
        super.viewDidLoad()
        //背景をタップしたらdissmisskeyboadメソッドを呼ぶようにする
        let tapGesture: UITapGestureRecognizer = UITapGestureRecognizer(target:self, action:#selector(dissmissKeyboad))
        self.view.addGestureRecognizer(tapGesture)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    func dissmissKeyboad() {
        view.endEditing(true)
    }
    
}
