import UIKit

public struct ContactsInfo {
    public var phone800, phoneMos, PhoneBaiconur, email, web: String?
}

// Данные модуля
public struct SBContactsData {
    public init() { }
    public var contactsInfo: String?
    public var version: String?
    public var isSignIn: Bool?
    public var canShowDevSettings: Bool?
    public var deviceAndClientInfo: String?
}

public struct SBContactsServices { }

// События из модуля
public enum SBContactsEvent {
    case devSettings(UIViewController)
    case analyticsEvent(category: String, action: String, label: String)
    case analyticsEventScreen(name: String)
}

// Обработчик событий
public protocol SBContactsDelegate: AnyObject {
    func contactsEventHandler(event: SBContactsEvent)
}

// Конфигурация
public typealias SBContactsConfigurationParams = (data: SBContactsData, services: SBContactsServices?, delegate: SBContactsDelegate?)

public enum SBContactsConfigurationEnum {
    case main(SBContactsConfigurationParams)
}

public protocol SBContactsApi {
    static func makeViewController(config: SBContactsConfigurationEnum) -> UIViewController
}
