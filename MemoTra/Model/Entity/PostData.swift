import RealmSwift

class PostData: Object {
    //管理用ID
    dynamic var id = 0
    
    //タイトル
    dynamic var title = ""
    
    //コメント
    dynamic var comment = ""
    
    //日時
    dynamic var date = NSDate()
    
    //カテゴリ
    dynamic var category = ""
    
   //画像

    
    //idをプリマリーキーとして設定
    override static func primaryKey() -> String? {
        return "id"
    }
    dynamic  var imageData: NSData? = nil

}
