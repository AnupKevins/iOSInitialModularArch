import UIKit
import Common

public class DebitModuleFactory: DebitFactory {
    
    public init() {}
    
    public func makeDebitVC() -> UIViewController {
        return DebitViewController()
    }
}

class DebitViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Debit Module"
        
        view.addSubview(label)
        
        NSLayoutConstraint.activate([
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}
