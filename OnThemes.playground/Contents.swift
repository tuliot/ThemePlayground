import UIKit
import XCPlayground

// Render container view
let page = XCPlayground.XCPlaygroundPage
let view = UIView(frame: CGRect(x: 0, y: 0, width: 375, height: 667))
view.backgroundColor = UIColor.whiteColor()
page.currentPage.liveView = view


// -------------------------------
// EXAMPLE OF tintColor BELOW  
//

// Since tintColor can be inherited and view is at the top of the view-hierarchy, all subviews will take this tint color
view.tintColor = UIColor.turquoiseColor()


/**
 Defines a theme
 */
enum Theme: String {
    case Default = "Default"
    case Dark = "Dark"
    
    // Colors and styles go here
    var primaryButtonBackgroundColor: UIColor {
        switch self {
        case .Default:
            return UIColor.alizarinColor()
        case .Dark:
            return UIColor.turquoiseColor()
        }
    }
}

/**
 Useful middle-man between an object that needs to get a Theme property, and the current Theme
 
 Note: This can also apply a theme throughout the application
 */
struct ThemeManager {
    
    /**
     Returns the current theme
     
     - returns: Theme
    */
    static func currentTheme() -> Theme {
        
        // On an iOS app, you might want to get this from NSUserDefaults
        
        // But we only have a Default theme for now, so that's what we will return
        return .Default
    }
    
    static func applyTheme(theme: Theme) {
        
        // Style buttons
        UIButton.appearanceWhenContainedInInstancesOfClasses([ UIStackView.self]).backgroundColor = theme.primaryButtonBackgroundColor
        
        // Style custom views here
    }
}

// This is the code that applies the theme
let theme = ThemeManager.currentTheme()
ThemeManager.applyTheme(theme)

// Nav bar
let navBar = getNavBar(view)
view.addSubview(navBar)

// Tool bar
let toolbar = getToolbar(view)
view.addSubview(toolbar)

// Control container
let customContainer = getCustomContainer(view)
view.addSubview(customContainer)

// ------------------------------------------------------------------
// EXAMPLE OF .imageWithRenderingMode BELOW
//

// Image view
let imageView = UIImageView()
imageView.widthAnchor.constraintEqualToConstant(100).active = true
imageView.heightAnchor.constraintEqualToConstant(100).active = true
let image = UIImage(named: "steak")?.imageWithRenderingMode(.AlwaysTemplate)
imageView.image = image
customContainer.pushToStackView(imageView)

// Add a slider
let slider = UISlider()
slider.widthAnchor.constraintEqualToConstant(100).active = true
slider.heightAnchor.constraintEqualToConstant(40).active = true
customContainer.pushToStackView(slider)

// Add a button here
let warn = WarningButton()
warn.widthAnchor.constraintEqualToConstant(80).active = true
warn.heightAnchor.constraintEqualToConstant(80).active = true
warn.setTitle("Warn", forState: .Normal)
customContainer.pushToStackView(warn)

let warn2 = WarningButton()
warn2.widthAnchor.constraintEqualToConstant(80).active = true
warn2.heightAnchor.constraintEqualToConstant(80).active = true
warn2.setTitle("Warn", forState: .Normal)
customContainer.pushToStackView(warn2)

