import UIKit
import Swinject

public protocol Coordinating {
    func navigateToDebitModule(baseVC: UIViewController?)
}
 
public protocol CreditFactory {
    func makeCreditVC() -> UIViewController
}

public protocol DebitFactory {
    func makeDebitVC() -> UIViewController
}

public class InjecterContainer {
    public static var shared = Container()
}
