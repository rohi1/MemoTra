import RealmSwift

class TagData: Object {

    //タグのID
    dynamic var id = 0
    
    //タグのタイトル
    dynamic var  title = ""

        //idをプリマリーキーとして設定
    override static func primaryKey() -> String? {
        return "id"
    }

}
