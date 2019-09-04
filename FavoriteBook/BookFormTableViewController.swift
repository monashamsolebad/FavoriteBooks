//
//  BookFormTableViewController.swift
//  FavoriteBooks
//
//  Created by Mona Shamsolebad on 2019-09-03.
//

import UIKit

class BookFormTableViewController: UITableViewController {
    var book: Book?
    
    struct PropertyKeys {
        static let unwind = "UnwindToBookTable"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()

   
    }
    func updateView(){
        guard let book = book else {return}
        
        titleTextField.text = book.title
        authorTextField.text = book.author
        genreTextField.text = book.genre
        lengthTextField.text = book.length
    }

    @IBOutlet var titleTextField: UITextField!
    
    @IBOutlet var authorTextField: UITextField!
    @IBOutlet var genreTextField: UITextField!
    @IBOutlet var lengthTextField: UITextField!
    
    @IBAction func saveButtonTapped(_ sender: UIButton) {
        guard let title = titleTextField.text,
            let author = authorTextField.text,
            let genre = genreTextField.text,
            let length = lengthTextField.text else {return}
        
        book = Book(title: title, author: author, genre: genre, length: length)
        performSegue(withIdentifier: PropertyKeys.unwind, sender: self)
    }
}
