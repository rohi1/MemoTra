//
//  MemoTableViewCell.swift
//  MemoTra
//
//  Created by 伊藤寛晃 on 2016/11/13.
//  Copyright © 2016年 Hiroaki_Ito. All rights reserved.
//

import UIKit

class MemoTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var memoImageView: UIImageView!
    @IBOutlet weak var memoTextView: UITextView!
    @IBOutlet weak var tagLabel: UILabel!
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
        self.memoImageView.image = image
        self.titleLabel.text = "\(postData.title)"
        self.memoTextView.text = "\(postData.comment)"
        self.tagLabel.text = "\(postData.category)"
        
        let formatter = DateFormatter()
        formatter.locale = NSLocale(localeIdentifier: "ja_JP") as Locale!
        formatter.dateFormat = "yyyy-MM-dd HH:mm"
        
        let dateString:String = formatter.string(from: postData.date as Date)
        self.dateLabel.text = dateString
        
    }
    
}
