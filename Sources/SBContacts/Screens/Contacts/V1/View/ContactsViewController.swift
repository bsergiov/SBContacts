import UIKit

protocol ContactsViewControllerInput { }

extension ContactsViewController: ContactsViewControllerInput { }

final class ContactsViewController: UIViewController {
    
    // MARK: - Life Cycles
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }
}

