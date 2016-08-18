import Foundation
import UIKit


/**
 Creates a nav bar and returns it. The nav bar will have a Done and a Menu button, and a title.
 
 - Note: Although this takes a containerView, this method does NOT add the nav bar to that view
 
 - parameter containerView: view
 
 - returns: UINavigationBar object for you to add to the subview.
 */
public func getNavBar(containerView: UIView) -> UINavigationBar {

    let navBar = UINavigationBar(frame: CGRect(x: 0, y: 0, width: containerView.frame.width, height: 88))
    let navBarItem = UINavigationItem(title: "Will it theme?")
    navBarItem.setRightBarButtonItem(UIBarButtonItem(title: "Done", style: .Done, target: nil, action: nil), animated: false)
    navBarItem.setLeftBarButtonItem(UIBarButtonItem(title: "Menu", style: .Plain, target: nil, action: nil), animated: false)
    navBar.pushNavigationItem(navBarItem, animated: false)
    
    return navBar
}

/**
 Creates a toolbar and returns it. The toolbar will have the following bar buttons
 
 * Camera
 * Pause
 * Add
 * Compose
 * Edit
 
 - Note: Although this takes a containerView, this method does NOT add the toolbar to that view
 
 - parameter containerView view
 
 - returns: UIToolbar object for you to add to the subview.
 */
public func getToolbar(containerView: UIView) -> UIToolbar {

    let toolbar = UIToolbar(frame: CGRect(x: 0, y: 88, width: containerView.frame.width, height: 44))
    toolbar.setItems([
        UIBarButtonItem(barButtonSystemItem: .Camera, target: nil, action: nil),
        UIBarButtonItem(barButtonSystemItem: .Pause, target: nil, action: nil),
        UIBarButtonItem(barButtonSystemItem: .Add, target: nil, action: nil),
        UIBarButtonItem(barButtonSystemItem: .Compose, target: nil, action: nil),
        UIBarButtonItem(barButtonSystemItem: .Edit, target: nil, action: nil),
        ], animated: false)
    
    return toolbar
}

/**
 Creates an instance of CustomContainer and returns it. It will have a button, and an imageview witht a picture of a steak
 
 - Note: Although this takes a containerView, this method does NOT add the nav bar to that view
 
 - parameter containerView view that will contain the nav bar
 
 - returns: UINavigationBar object for you to add to the subview.
 */
public func getCustomContainer(containerView: UIView) -> CustomContainer {
    
    // Control container
    let customContainer = CustomContainer(frame: CGRect(x: 0, y: 132, width: containerView.frame.width, height: containerView.frame.height-132))
    
    // Stack View
    let stackView = customContainer.stackView
    stackView.axis = UILayoutConstraintAxis.Vertical
    stackView.distribution = UIStackViewDistribution.EqualSpacing
    stackView.alignment = UIStackViewAlignment.Center
    stackView.spacing = 16.0

    // Basic button
    let basicButton = UIButton()
    basicButton.widthAnchor.constraintEqualToConstant(200).active = true
    basicButton.heightAnchor.constraintEqualToConstant(60).active = true
    basicButton.setTitle("Basic Button", forState: .Normal)
    stackView.addArrangedSubview(basicButton)
    
    stackView.translatesAutoresizingMaskIntoConstraints = false;
    customContainer.addSubview(stackView)
    
    //Constraints
    stackView.centerXAnchor.constraintEqualToAnchor(customContainer.centerXAnchor).active = true
    stackView.centerYAnchor.constraintEqualToAnchor(customContainer.centerYAnchor).active = true

    return customContainer
}

