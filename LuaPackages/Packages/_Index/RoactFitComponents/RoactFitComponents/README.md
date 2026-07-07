# roact-fit-components
There is an open issue to clean up this Readme.

## Purpose
To provide a way to resize Roact frames and text labels in-leu of a formal layout system.

## API
There are four public members of this package: FitFrameHorizontal, FitFrameVertical, FitFrameOnAxis, and FitTextLabel.

### FitFrameHorizontal
Accepts the following props:
* height (UDim)
* any "Shared Api" property
* any Instance.ImageLabel property
    * _Note_: Extended to Instance.ImageButton properties when onActivated is also provided!

### FitFrameVertical
Accepts the following props:
* width (UDim)
* any "Shared Api" property
* any Instance.ImageLabel property
    * _Note_: Extended to Instance.ImageButton properties when onActivated is also provided!

### FitFrameOnAxis
Accepts the following props:
* minimumSize (UDim2)
* axis (FitFrameOnAxis.Axis)
* margin (dictionary: `top = float, bottom = float, left = float, right = float`)
	* [Example image](/docs/resources/prop-margin-story.png?raw=true)
* any "Shared Api" property
* any Instance.ImageLabel property
    * _Note_: Extended to Instance.ImageButton properties when onActivated is also provided!

### Shared Api
* FillDirection (Enum.FillDirection)
* HorizontalAlignment (Enum.HorizontalAlignment)
* VerticalAlignment (Enum.VerticalAlignment)
* contentPadding (UDim)
* ImageSet (dictionary of any Instance.ImageLabel properties)
* onActivated (function)
* textProps (dictionary of Instance.TextLabel properties, these do not affect sizing)

Additionally, there exists FitTextLabel.
### FitTextLabel
* width (UDim or FitTextLabel.Width)
	* [Example image](/docs/resources/prop-width-story.png?raw=true)
* maximumWidth (float)
	* [Example image](/docs/resources/prop-maximumWidth-story.png?raw=true)
* onActivated (function)
* any Instance.TextLabel property
    * _Note_: Extended to Instance.TextButton properties when onActivated is also provided!

Additionally, there exists a Rect userdata (currently only used for FitFrame's margin property)

### Rect
* square(float measure)
* rectangle(float horizontal, float vertical)
* quad(float top, float right, float bottom, float left)

Each of these functions return:
```lua
{
	top = float,
	bottom = float,
	left = float,
	right = float,
}
```

## Run Tests

Prerequisites:
* [Foreman](https://github.com/roblox/foreman) toolchain manager (once installed, run `foreman install` to install tools like `rotriever`)
* [lest](https://github.com/roblox/lest) test runner

```
$ rotrieve install
$ lest
```

## Contributing
Check out our [Contributing guide](CONTRIBUTING.md).

Message me (@bbrimeyer) on Slack with questions.
