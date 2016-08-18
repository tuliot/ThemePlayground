# On Themes

## Whats this?
This is a playground meant for playing around with theme support

## What do I do with it?
You can do whatever you want! My suggestion is to try to play around with `Theme` and `ThemeManager` to see how theme support can work for you. I encourage you to drop your own code in the sources folder, and see how your own views can be themed and styled with the `ThemeManager` struct and `UIAppearance` proxies


## I saw your talk
If you've arrived at this Playground because you watched my talk on supporting themes with UIAppearance, the following notes will be useful


Look for comments like this one: 

``` 
// -------------------------------
// EXAMPLE OF tintColor BELOW
//
```

Those denote the main points of my talk, and are examples of tintColor, UIAppearance, and imageWithRenderingMode

#### BoilerplateElements.swift
Contains most of the code that creates the buttons and views that are displayed in the page.
I've set this code aside because most of it doesn't have to do with themeing, and the bulk of my work for the talk
took place outside of that file.

#### Color.swift
Contains an extension of UIColor that adds the Flat UI Colors so we can use them.
Purely for aesthetic purposes

#### Custom.swift
Has some classes in there that are just meant to show how different levels 
of inheritance work with UIAppearance


## Useful Links

* [Pitch Perfect App](https://github.com/tuliot/Udacity-PitchPerfect)
* [tintColor Apple Docs](https://developer.apple.com/reference/uikit/uiview/1622467-tintcolor)
* [UIAppearance NSHipster article](http://nshipster.com/uiappearance/)
* [UIAppearance Apple Docs](https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIAppearance_Protocol/)
* [UIImage Apple Docs](https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIImage_Class/)

## License
The MIT License (MIT)  
Copyright (c) 2016 

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.