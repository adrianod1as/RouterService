import Foundation
import FeatureTwoInterface
import RouterServiceInterface

public class FeatureTwoRouteHandler: RouteHandler {
    public var routes: [Route.Type] {
        return [FeatureTwoRoute.self]
    }

    public func destination(
        forRoute route: Route,
        fromViewController viewController: UIViewController
    ) -> AnyFeature {
        guard route is FeatureTwoRoute else {
            preconditionFailure("unexpected route")
        }
        return AnyFeature(FeatureTwo.self)
    }

    public init() {}
}