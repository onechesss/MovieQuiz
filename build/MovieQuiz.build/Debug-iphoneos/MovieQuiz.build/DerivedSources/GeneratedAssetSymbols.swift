import Foundation
#if canImport(AppKit)
import AppKit
#endif
#if canImport(UIKit)
import UIKit
#endif
#if canImport(SwiftUI)
import SwiftUI
#endif
#if canImport(DeveloperToolsSupport)
import DeveloperToolsSupport
#endif

#if SWIFT_PACKAGE
private let resourceBundle = Foundation.Bundle.module
#else
private class ResourceBundleClass {}
private let resourceBundle = Foundation.Bundle(for: ResourceBundleClass.self)
#endif

// MARK: - Color Symbols -

@available(iOS 11.0, macOS 10.13, tvOS 11.0, *)
extension ColorResource {

    /// The "YP Background" asset catalog color resource.
    static let ypBackground = ColorResource(name: "YP Background", bundle: resourceBundle)

    /// The "YP Black" asset catalog color resource.
    static let ypBlack = ColorResource(name: "YP Black", bundle: resourceBundle)

    /// The "YP Gray" asset catalog color resource.
    static let ypGray = ColorResource(name: "YP Gray", bundle: resourceBundle)

    /// The "YP Green" asset catalog color resource.
    static let ypGreen = ColorResource(name: "YP Green", bundle: resourceBundle)

    /// The "YP Red" asset catalog color resource.
    static let ypRed = ColorResource(name: "YP Red", bundle: resourceBundle)

    /// The "YP White" asset catalog color resource.
    static let ypWhite = ColorResource(name: "YP White", bundle: resourceBundle)

}

// MARK: - Image Symbols -

@available(iOS 11.0, macOS 10.7, tvOS 11.0, *)
extension ImageResource {

    /// The "Deadpool" asset catalog image resource.
    static let deadpool = ImageResource(name: "Deadpool", bundle: resourceBundle)

    /// The "Kill Bill" asset catalog image resource.
    static let killBill = ImageResource(name: "Kill Bill", bundle: resourceBundle)

    /// The "LaunchScreen" asset catalog image resource.
    static let launchScreen = ImageResource(name: "LaunchScreen", bundle: resourceBundle)

    /// The "Old" asset catalog image resource.
    static let old = ImageResource(name: "Old", bundle: resourceBundle)

    /// The "Tesla" asset catalog image resource.
    static let tesla = ImageResource(name: "Tesla", bundle: resourceBundle)

    /// The "The Avengers" asset catalog image resource.
    static let theAvengers = ImageResource(name: "The Avengers", bundle: resourceBundle)

    /// The "The Dark Knight" asset catalog image resource.
    static let theDarkKnight = ImageResource(name: "The Dark Knight", bundle: resourceBundle)

    /// The "The Godfather" asset catalog image resource.
    static let theGodfather = ImageResource(name: "The Godfather", bundle: resourceBundle)

    /// The "The Green Knight" asset catalog image resource.
    static let theGreenKnight = ImageResource(name: "The Green Knight", bundle: resourceBundle)

    /// The "The Ice Age Adventures of Buck Wild" asset catalog image resource.
    static let theIceAgeAdventuresOfBuckWild = ImageResource(name: "The Ice Age Adventures of Buck Wild", bundle: resourceBundle)

    /// The "Vivarium" asset catalog image resource.
    static let vivarium = ImageResource(name: "Vivarium", bundle: resourceBundle)

}

// MARK: - Color Symbol Extensions -

#if canImport(AppKit)
@available(macOS 10.13, *)
@available(macCatalyst, unavailable)
extension AppKit.NSColor {

    /// The "YP Background" asset catalog color.
    static var ypBackground: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .ypBackground)
#else
        .init()
#endif
    }

    /// The "YP Black" asset catalog color.
    static var ypBlack: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .ypBlack)
#else
        .init()
#endif
    }

    /// The "YP Gray" asset catalog color.
    static var ypGray: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .ypGray)
#else
        .init()
#endif
    }

    /// The "YP Green" asset catalog color.
    static var ypGreen: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .ypGreen)
#else
        .init()
#endif
    }

    /// The "YP Red" asset catalog color.
    static var ypRed: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .ypRed)
#else
        .init()
#endif
    }

    /// The "YP White" asset catalog color.
    static var ypWhite: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .ypWhite)
#else
        .init()
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 11.0, tvOS 11.0, *)
@available(watchOS, unavailable)
extension UIKit.UIColor {

    /// The "YP Background" asset catalog color.
    static var ypBackground: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .ypBackground)
#else
        .init()
#endif
    }

    /// The "YP Black" asset catalog color.
    static var ypBlack: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .ypBlack)
#else
        .init()
#endif
    }

    /// The "YP Gray" asset catalog color.
    static var ypGray: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .ypGray)
#else
        .init()
#endif
    }

    /// The "YP Green" asset catalog color.
    static var ypGreen: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .ypGreen)
#else
        .init()
#endif
    }

    /// The "YP Red" asset catalog color.
    static var ypRed: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .ypRed)
#else
        .init()
#endif
    }

    /// The "YP White" asset catalog color.
    static var ypWhite: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .ypWhite)
#else
        .init()
#endif
    }

}
#endif

#if canImport(SwiftUI)
@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.Color {

    /// The "YP Background" asset catalog color.
    static var ypBackground: SwiftUI.Color { .init(.ypBackground) }

    /// The "YP Black" asset catalog color.
    static var ypBlack: SwiftUI.Color { .init(.ypBlack) }

    /// The "YP Gray" asset catalog color.
    static var ypGray: SwiftUI.Color { .init(.ypGray) }

    /// The "YP Green" asset catalog color.
    static var ypGreen: SwiftUI.Color { .init(.ypGreen) }

    /// The "YP Red" asset catalog color.
    static var ypRed: SwiftUI.Color { .init(.ypRed) }

    /// The "YP White" asset catalog color.
    static var ypWhite: SwiftUI.Color { .init(.ypWhite) }

}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.ShapeStyle where Self == SwiftUI.Color {

    /// The "YP Background" asset catalog color.
    static var ypBackground: SwiftUI.Color { .init(.ypBackground) }

    /// The "YP Black" asset catalog color.
    static var ypBlack: SwiftUI.Color { .init(.ypBlack) }

    /// The "YP Gray" asset catalog color.
    static var ypGray: SwiftUI.Color { .init(.ypGray) }

    /// The "YP Green" asset catalog color.
    static var ypGreen: SwiftUI.Color { .init(.ypGreen) }

    /// The "YP Red" asset catalog color.
    static var ypRed: SwiftUI.Color { .init(.ypRed) }

    /// The "YP White" asset catalog color.
    static var ypWhite: SwiftUI.Color { .init(.ypWhite) }

}
#endif

// MARK: - Image Symbol Extensions -

#if canImport(AppKit)
@available(macOS 10.7, *)
@available(macCatalyst, unavailable)
extension AppKit.NSImage {

    /// The "Deadpool" asset catalog image.
    static var deadpool: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .deadpool)
#else
        .init()
#endif
    }

    /// The "Kill Bill" asset catalog image.
    static var killBill: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .killBill)
#else
        .init()
#endif
    }

    /// The "LaunchScreen" asset catalog image.
    static var launchScreen: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .launchScreen)
#else
        .init()
#endif
    }

    /// The "Old" asset catalog image.
    static var old: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .old)
#else
        .init()
#endif
    }

    /// The "Tesla" asset catalog image.
    static var tesla: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .tesla)
#else
        .init()
#endif
    }

    /// The "The Avengers" asset catalog image.
    static var theAvengers: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .theAvengers)
#else
        .init()
#endif
    }

    /// The "The Dark Knight" asset catalog image.
    static var theDarkKnight: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .theDarkKnight)
#else
        .init()
#endif
    }

    /// The "The Godfather" asset catalog image.
    static var theGodfather: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .theGodfather)
#else
        .init()
#endif
    }

    /// The "The Green Knight" asset catalog image.
    static var theGreenKnight: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .theGreenKnight)
#else
        .init()
#endif
    }

    /// The "The Ice Age Adventures of Buck Wild" asset catalog image.
    static var theIceAgeAdventuresOfBuckWild: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .theIceAgeAdventuresOfBuckWild)
#else
        .init()
#endif
    }

    /// The "Vivarium" asset catalog image.
    static var vivarium: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .vivarium)
#else
        .init()
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 11.0, tvOS 11.0, *)
@available(watchOS, unavailable)
extension UIKit.UIImage {

    /// The "Deadpool" asset catalog image.
    static var deadpool: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .deadpool)
#else
        .init()
#endif
    }

    /// The "Kill Bill" asset catalog image.
    static var killBill: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .killBill)
#else
        .init()
#endif
    }

    /// The "LaunchScreen" asset catalog image.
    static var launchScreen: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .launchScreen)
#else
        .init()
#endif
    }

    /// The "Old" asset catalog image.
    static var old: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .old)
#else
        .init()
#endif
    }

    /// The "Tesla" asset catalog image.
    static var tesla: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .tesla)
#else
        .init()
#endif
    }

    /// The "The Avengers" asset catalog image.
    static var theAvengers: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .theAvengers)
#else
        .init()
#endif
    }

    /// The "The Dark Knight" asset catalog image.
    static var theDarkKnight: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .theDarkKnight)
#else
        .init()
#endif
    }

    /// The "The Godfather" asset catalog image.
    static var theGodfather: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .theGodfather)
#else
        .init()
#endif
    }

    /// The "The Green Knight" asset catalog image.
    static var theGreenKnight: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .theGreenKnight)
#else
        .init()
#endif
    }

    /// The "The Ice Age Adventures of Buck Wild" asset catalog image.
    static var theIceAgeAdventuresOfBuckWild: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .theIceAgeAdventuresOfBuckWild)
#else
        .init()
#endif
    }

    /// The "Vivarium" asset catalog image.
    static var vivarium: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .vivarium)
#else
        .init()
#endif
    }

}
#endif

// MARK: - Thinnable Asset Support -

@available(iOS 11.0, macOS 10.13, tvOS 11.0, *)
@available(watchOS, unavailable)
extension ColorResource {

    private init?(thinnableName: Swift.String, bundle: Foundation.Bundle) {
#if canImport(AppKit) && os(macOS)
        if AppKit.NSColor(named: NSColor.Name(thinnableName), bundle: bundle) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#elseif canImport(UIKit) && !os(watchOS)
        if UIKit.UIColor(named: thinnableName, in: bundle, compatibleWith: nil) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}

#if canImport(AppKit)
@available(macOS 10.13, *)
@available(macCatalyst, unavailable)
extension AppKit.NSColor {

    private convenience init?(thinnableResource: ColorResource?) {
#if !targetEnvironment(macCatalyst)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 11.0, tvOS 11.0, *)
@available(watchOS, unavailable)
extension UIKit.UIColor {

    private convenience init?(thinnableResource: ColorResource?) {
#if !os(watchOS)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

#if canImport(SwiftUI)
@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.Color {

    private init?(thinnableResource: ColorResource?) {
        if let resource = thinnableResource {
            self.init(resource)
        } else {
            return nil
        }
    }

}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.ShapeStyle where Self == SwiftUI.Color {

    private init?(thinnableResource: ColorResource?) {
        if let resource = thinnableResource {
            self.init(resource)
        } else {
            return nil
        }
    }

}
#endif

@available(iOS 11.0, macOS 10.7, tvOS 11.0, *)
@available(watchOS, unavailable)
extension ImageResource {

    private init?(thinnableName: Swift.String, bundle: Foundation.Bundle) {
#if canImport(AppKit) && os(macOS)
        if bundle.image(forResource: NSImage.Name(thinnableName)) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#elseif canImport(UIKit) && !os(watchOS)
        if UIKit.UIImage(named: thinnableName, in: bundle, compatibleWith: nil) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}

#if canImport(AppKit)
@available(macOS 10.7, *)
@available(macCatalyst, unavailable)
extension AppKit.NSImage {

    private convenience init?(thinnableResource: ImageResource?) {
#if !targetEnvironment(macCatalyst)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 11.0, tvOS 11.0, *)
@available(watchOS, unavailable)
extension UIKit.UIImage {

    private convenience init?(thinnableResource: ImageResource?) {
#if !os(watchOS)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

// MARK: - Backwards Deployment Support -

/// A color resource.
struct ColorResource: Swift.Hashable, Swift.Sendable {

    /// An asset catalog color resource name.
    fileprivate let name: Swift.String

    /// An asset catalog color resource bundle.
    fileprivate let bundle: Foundation.Bundle

    /// Initialize a `ColorResource` with `name` and `bundle`.
    init(name: Swift.String, bundle: Foundation.Bundle) {
        self.name = name
        self.bundle = bundle
    }

}

/// An image resource.
struct ImageResource: Swift.Hashable, Swift.Sendable {

    /// An asset catalog image resource name.
    fileprivate let name: Swift.String

    /// An asset catalog image resource bundle.
    fileprivate let bundle: Foundation.Bundle

    /// Initialize an `ImageResource` with `name` and `bundle`.
    init(name: Swift.String, bundle: Foundation.Bundle) {
        self.name = name
        self.bundle = bundle
    }

}

#if canImport(AppKit)
@available(macOS 10.13, *)
@available(macCatalyst, unavailable)
extension AppKit.NSColor {

    /// Initialize a `NSColor` with a color resource.
    convenience init(resource: ColorResource) {
        self.init(named: NSColor.Name(resource.name), bundle: resource.bundle)!
    }

}

protocol _ACResourceInitProtocol {}
extension AppKit.NSImage: _ACResourceInitProtocol {}

@available(macOS 10.7, *)
@available(macCatalyst, unavailable)
extension _ACResourceInitProtocol {

    /// Initialize a `NSImage` with an image resource.
    init(resource: ImageResource) {
        self = resource.bundle.image(forResource: NSImage.Name(resource.name))! as! Self
    }

}
#endif

#if canImport(UIKit)
@available(iOS 11.0, tvOS 11.0, *)
@available(watchOS, unavailable)
extension UIKit.UIColor {

    /// Initialize a `UIColor` with a color resource.
    convenience init(resource: ColorResource) {
#if !os(watchOS)
        self.init(named: resource.name, in: resource.bundle, compatibleWith: nil)!
#else
        self.init()
#endif
    }

}

@available(iOS 11.0, tvOS 11.0, *)
@available(watchOS, unavailable)
extension UIKit.UIImage {

    /// Initialize a `UIImage` with an image resource.
    convenience init(resource: ImageResource) {
#if !os(watchOS)
        self.init(named: resource.name, in: resource.bundle, compatibleWith: nil)!
#else
        self.init()
#endif
    }

}
#endif

#if canImport(SwiftUI)
@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.Color {

    /// Initialize a `Color` with a color resource.
    init(_ resource: ColorResource) {
        self.init(resource.name, bundle: resource.bundle)
    }

}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.Image {

    /// Initialize an `Image` with an image resource.
    init(_ resource: ImageResource) {
        self.init(resource.name, bundle: resource.bundle)
    }

}
#endif