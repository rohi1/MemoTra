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
    
    //配列を定義して入れる箱を用意しておく
    var tagIdArray = List<IntObject>()
    
       //idをプリマリーキーとして設定
    override static func primaryKey() -> String? {
        return "id"
    }
    dynamic  var imageData: NSData? = nil

}
//Int型の配列を作る
class IntObject: Object {
    dynamic var value = 0
}

