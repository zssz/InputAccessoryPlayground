//
//  Created by Zsombor Szabo on 07/01/2020.
//  Copyright © 2020 IZE. All rights reserved.
//

import UIKit

class DetailViewController:UITableViewController {
    
    @IBOutlet weak var detailDescriptionLabel: UILabel!
        
    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            if let label = detailDescriptionLabel {
                label.text = detail.description
            }
        }
    }
    
    override var canBecomeFirstResponder: Bool {
        return true
    }
    
    override var inputAccessoryView: UIView? {
        return self.textField
    }
    
    lazy var textField: UITextField = {
        let textField = UITextField(frame: .zero)
        textField.borderStyle = .roundedRect
        textField.backgroundColor = .green
        textField.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        return textField
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //        configureView()
        tableView.keyboardDismissMode = .interactive
    }
    
    var detailItem: NSDate? {
        didSet {
            // Update the view.
            configureView()
        }
    }
}
