import UIKit

class PostTableViewCell: UITableViewCell {
    
    @IBOutlet weak var TitleText: UITextField!
    @IBOutlet weak var postImageView: UIImageView!
    @IBOutlet weak var CommentTextView: UITextView!
    @IBOutlet weak var TagLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    func setPostData(postData: PostData) {
        // self.postImageView.image = postData.imageData
        let image: UIImage? = UIImage(data: postData.imageData as! Data)
        self.postImageView.image = image
        self.TitleText.text = "\(postData.title)"
        self.CommentTextView.text = "\(postData.comment)"
        //self.TagLabel.text = "\(tagData.title)"
        
        let formatter = DateFormatter()
        formatter.locale = NSLocale(localeIdentifier: "ja_JP") as Locale!
        formatter.dateFormat = "yyyy-MM-dd HH:mm"
        
        let dateString:String = formatter.string(from: postData.date as Date)
        self.dateLabel.text = dateString
        
    }
}
