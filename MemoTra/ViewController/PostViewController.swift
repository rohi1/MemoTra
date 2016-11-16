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
                realmDB.category = self.TagTextField.text!
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

