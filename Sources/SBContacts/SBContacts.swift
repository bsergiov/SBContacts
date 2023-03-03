import UIKit
import SBContactsApi
import Resolver


public class SBContacts: SBContactsApi {
    public init() {}
    
    public static func makeViewController(config: SBContactsConfigurationEnum) -> UIViewController {
        switch config {
        case .main(let params):
            Resolver.register(params: params)
            let factory = Self.buildContactsFactory()
            return factory.makeViewController()
        }
    }
}

// ⚠️ без расширения ниже Self будет не доступен

extension SBContacts: ContactsFactoryBuilder { }

private extension Resolver {
    static func register(params: SBContactsConfigurationParams) {
        register { params.data }.scope(.graph)
        register { params.delegate }.scope(.shared)
        register { params.services }.scope(.graph)
    }
}
