import SBContactsApi
import UIKit

protocol ContactsFactory {
    static func makeViewController() -> UIViewController
}

protocol ContactsFactoryBuilder {
    static func buildContactsFactory() -> ContactsFactory.Type
}

extension ContactsFactoryBuilder {
    static func buildContactsFactory() -> ContactsFactory.Type {
        ContactsFactoryDefault.self
    }
}
