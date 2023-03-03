import SBContactsApi
import UIKit
import SBContacts

public protocol SBContactsFactory {
    static func makeModule() -> SBContactsApi.Type
}

public protocol SBContactsFactoryBuilder {
    static func buildSBContactsFactory() -> SBContactsFactory.Type
}

public extension SBContactsFactoryBuilder {
    static func builSBContactsFactory() -> SBContactsFactory.Type {
        // активная фабрика
        SBContactsFactoryDefault.self
    }
}

public class SBContactsFactoryDefault: SBContactsFactory {
    public static func makeModule() -> SBContactsApi.Type {
        Contacts.self
    }
}

class Contacts: SBContactsApi {
    static func makeViewController(config: SBContactsConfigurationEnum) -> UIViewController {
        UIViewController()
    }
}
