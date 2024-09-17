import UIKit
import Common

public class CreditModuleFactory: CreditFactory {
    public init() {}
    
    public func makeCreditVC() -> UIViewController {
        return CreditViewController()
    }
}

class CreditViewController: UIViewController {
    
    var coordinator = InjecterContainer.shared.resolve(Coordinating.self)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Credit Module"
        
        let button = UIButton()
        button.backgroundColor = .red
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Go to Debit Module", for: .normal)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        button.layer.cornerRadius = 20
        
        view.addSubview(button)
        
        NSLayoutConstraint.activate([
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    @objc func didTapButton() {
        coordinator?.navigateToDebitModule(baseVC: self)
    }
}
