
import SBContactsApi
import Resolver
import UIKit

class ContactsFactoryDefault: ContactsFactory {
    static func makeViewController() -> UIViewController {
        Resolver.register()
        let vc: ContactsViewController = Resolver.resolve()
        return vc
    }
}

private extension Resolver {
    static func register() {
        register { ContactsViewController() }
            .implements(ContactsViewControllerInput.self)
            .scope(.shared)
    }
}
