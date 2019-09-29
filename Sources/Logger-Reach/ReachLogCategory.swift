import Logger

public enum ReachLogCategory: LogCategory {

    case defaultCategory
    case network
    case notification
    case database
    case api
    case analytics
    case login
    case decoder
    case conversation
    case conversationDetail
    case profile
    case people
    case threadLock
    case custom(categoryName: String)

    public var categoryKey: String {

        switch self {

        case .analytics: return "analytics"
        case .defaultCategory: return "default"
        case .notification: return "notification"
        case .network: return "network"
        case .database: return "database"
        case .api: return "api"
        case .decoder: return "decoder"
        case .login: return "login"
        case .conversation: return "conversation"
        case .conversationDetail: return "conversationDetail"
        case .profile: return "profile"
        case .people: return "people"
        case .threadLock: return "threadLock"
        case .custom(categoryName: let categoryName):
            return categoryName
        }
    }
}
