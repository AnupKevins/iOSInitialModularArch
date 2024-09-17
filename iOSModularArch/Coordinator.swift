//
//  Coordinator.swift
//  iOSModularArch
//
//  Created by Anup kumar sahu on 16/09/24.
//

import Foundation
import Common
import UIKit

class Coordinator: Coordinating {
    var factory = InjecterContainer.shared.resolve(DebitFactory.self)
    
    func navigateToDebitModule(baseVC: UIViewController?) {
        guard let debitVC = factory?.makeDebitVC() else { return }
        
        baseVC?.navigationController?.pushViewController(debitVC, animated: true)
    }
    
}
