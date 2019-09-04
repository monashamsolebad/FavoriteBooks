//
//  BookTableViewCell.swift
//  FavoriteBooks
//
//  Created by Mona Shamsolebad on 2019-09-03.
//

import UIKit

class BookTableViewCell: UITableViewCell {
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func update(with book : Book) {
        titleLabel.text = book.title
        authorLabel.text = book.author
        genreLAbel.text = book.genre
        lengthLabel.text = book.length
        
    }
    
    @IBOutlet var titleLabel: UILabel!
    
    @IBOutlet var authorLabel: UILabel!
    
    @IBOutlet var genreLAbel: UILabel!
    
    @IBOutlet var lengthLabel: UILabel!
}
