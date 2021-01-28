# PrettyButtons

PrettyButtons is a pod for creating animated UIButtons that respond to user-touch.

<p align="center">
<img src="Readme_Imgs/PrettyButtonsDemo.gif" />

<img src="Readme_Imgs/LiftingBuddyDemo.gif" />
</p>

### Installation

1. Install [CocoaPods](https://cocoapods.org)
1. Add this repo to your `Podfile`

	```ruby
	target 'Example' do
		# IMPORTANT: Make sure use_frameworks! is included at the top of the file
		use_frameworks!

		pod 'PrettyButtons'
	end
	```
1. Run `pod install` in the podfile directory from your terminal
1. Open up the `.xcworkspace` that CocoaPods created
1. Done!

#### Example

The example project shows how the above demonstration was created.

To run the example project, clone the repo, and run `pod install` from the Example directory first.

##### Initialization

PrettyButtons can be initialized by any of the following methods:
```
init(style: OverlayStyle = .none)
init(frame: CGRect, style: OverlayStyle = .none)
init(coder aDecoder: NSCoder)
```

Where OverlayStyles is defined as:
```
enum OverlayStyle: Int {
	case none = 0
	case slide = 1
	case bloom = 2
	case fade = 3
}
```

### Author

Chris Perkins

PrettyButtons is available under the MIT license. See the LICENSE file for more info.
