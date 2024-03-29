# JLSwiftUtilities

A collection of Swift helpers and utilities that I've written over the years that I think everyone could benefit from using it. This repo is constantly getting maintained and updated.

## Installation

### Swift Package Manager:
Add this package to the dependencies within your application’s `Package.swift` file. Substitute `"x.x.x"` with the latest version of this project.

```
.package(url: "https://github.com/ljw980105/JLSwiftUtilities.git", from: "x.x.x")
```

## Extensions


### `UIView+Extensions`
```swift
func enableAutolayoutForXib(on contentView: UIView)
```
Enables autolayout for any `UIViews` whose interface is designed in an interface builder XIB.

```swift
func addRoundCorners(cornerRadius: CGFloat = 20.0)
```
Adds a rounded corner to any `UIView`s.

### `Array+Extensions`'
```swift
func sliced(from begin: Int, to end: Int) -> [Element]
```
An array slice solution to avoid the memory issues created with the default `ArraySlice`.

```swift
func duplicatesRemoved() -> [Element] 
```
Removes duplicates while preserving order. Requires array elements to conform to `Hashable` and `Equatable`.


### `UIImage+Extensions`

```swift
class func imageFrom(color: UIColor, at size: CGSize = default) -> UIImage?
```
Generate an image from a color, at the specified size.  The size defaults to 500.

### `UITabBarController+Extensions`

```swift
func removeText()
```
Remove all texts from the tab bar and then move the icon down. The resulting tab bar looks like Instagram's.

## Views

### `ColorPickerView`
A simple but effective color picker.

<p align = "left">
    <img width = "300" height = "305" src = "Resources/ColorPicker.jpeg">
</p>

### `PageViewController`
Simply initialize it with a few view controllers to achieve a instagram-like pager look!

## Classes

### `Haptic`
A singleton class written to simplify the usage of haptic feedback generators which first shipped with iOS 10 on iPhone 7. It contains three main categories: selection feedbacks, impact feed backs and notification feedbacks. It is used through a singleton `current`.

Sample code to trigger a medium impact feedback:
```swift
Haptic.current.mediumImpact()
```

### Thanks for stopping by!
