//
//  ViewController.swift
//  MVCExample
//
//  Created by David Perez Espino on 02/10/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtFldTitle: UITextField!
    @IBOutlet weak var txtFldAuthor: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showBook(_ sender: Any) {
        /*let book = Book(
            id: UUID().uuidString,
            title: txtFldTitle.text ?? "",
            author: txtFldAuthor.text ?? ""
        )*/
        
        ApiHelper.shared.getBooks{ books in
            for book in books {
                print("Book name: \(book.title)\nAuthor: \(book.author)")
                //showAlert(message: )
            }
        }
    }
    
    
    func showAlert(message: String) {
        let dialogMessage = UIAlertController(title: "Atention", message: message, preferredStyle: .alert)
        
        let ok = UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in
            dialogMessage.dismiss(animated: true)
        })
        
        dialogMessage.addAction(ok)
        self.present(dialogMessage, animated: true, completion: nil)
    }
}

