#if os(iOS)
import UIKit
import RambaHamba

public struct MyLocalLibraryStructure {
    public var anyText = "Fuck the World!"
    public var anotherText = "sajbkasjb"
    
    public init() {}
}

public class Button: UIButton {
    init() {
        size(CGSize(36))
        layer.borderWidth = 1
        layer.cornerRadius = 18
        clipsToBounds = true
    }
}

#endif
