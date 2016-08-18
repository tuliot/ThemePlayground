import Foundation
import UIKit

/**
 Subclass of UIButton. This doesn't do anything special, I just wanted it for inheritance purposes
 */
public class WarningButton: UIButton {

}

/**
 Subclass of UIButton. This doesn't do anything special, I just wanted it for inheritance purposes
 */
public class SuperWarningButton: WarningButton {
    
}

/**
 Subclass of UIView. I wanted to use this for inheritance purposes also.
 */
public class CustomContainer: UIView {
    var stackView: UIStackView = UIStackView()
    
    public func pushToStackView(view: UIView) {
        stackView.addArrangedSubview(view)
    }
}