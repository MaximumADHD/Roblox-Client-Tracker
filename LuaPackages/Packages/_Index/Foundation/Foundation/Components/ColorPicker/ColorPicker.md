---
category: Inputs
---

## Overview

!!! note "Work In Progress Component"
	`ColorPicker` is currently WIP and requires the `FoundationColorPickerComponent` feature flag to be enabled. The API may change in future releases.

`ColorPicker` is an interactive color selection component that allows users to pick colors using multiple input methods. It combines a saturation/value picker, hue slider, optional alpha slider, and text inputs that support RGB, RGBA, HSV, and Hex color formats.

---

## Enabling ColorPicker

Since ColorPicker is WIP, you need to enable the feature flag before using it:

```lua
-- Enable the feature flag (this would typically be done at the application level)
game:SetFastFlag("FoundationColorPickerComponent", true)

-- Then you can use ColorPicker normally
local Foundation = require(Packages.Foundation)
local ColorPicker = Foundation.ColorPicker
```

If you attempt to use ColorPicker without the flag enabled, it will return `nil`.

---

## Usage

ColorPicker is designed to be controlled by the consumer. The main props to supply are `onColorChanged` and optionally `onAlphaChanged` to handle color selection events.

### Basic Color Picker

```lua
local Foundation = require(Packages.Foundation)
local ColorPicker = Foundation.ColorPicker

local function BasicColorPicker()
	local selectedColor, setSelectedColor = React.useState(Color3.new(1, 0, 0))

	return React.createElement(ColorPicker, {
		initialColor = selectedColor,
		onColorChanged = function(newColor)
			setSelectedColor(newColor)
			print("Color changed to:", newColor)
		end,
	})
end
```

### Color Picker with Alpha Support

```lua
local Foundation = require(Packages.Foundation)
local ColorPicker = Foundation.ColorPicker

local function ColorPickerWithAlpha()
	local selectedColor, setSelectedColor = React.useState(Color3.new(0, 0.5, 1))
	local selectedAlpha, setSelectedAlpha = React.useState(0.8)

	return React.createElement(ColorPicker, {
		initialColor = selectedColor,
		initialAlpha = selectedAlpha,
		onColorChanged = function(newColor)
			setSelectedColor(newColor)
		end,
		onAlphaChanged = function(newAlpha)
			setSelectedAlpha(newAlpha)
		end,
	})
end
```

### Color Picker without Alpha

For use cases where you only need RGB color selection without transparency:

```lua
local Foundation = require(Packages.Foundation)
local ColorPicker = Foundation.ColorPicker

local function SimpleColorPicker()
	local selectedColor, setSelectedColor = React.useState(Color3.new(0.5, 0.5, 0.5))

	return React.createElement(ColorPicker, {
		initialColor = selectedColor,
		onColorChanged = function(newColor)
			setSelectedColor(newColor)
		end,
	})
end
```

---

## Features

- **Visual Color Selection**: Saturation/Value picker for intuitive color selection
- **Hue Control**: Dedicated hue slider for precise hue adjustment  
- **Alpha Control**: Optional alpha slider for transparency selection
- **Multiple Input Formats**: Text inputs supporting RGB, RGBA, HSV, and Hex formats
- **Format Switching**: Dropdown to switch between different color input modes
- **Real-time Updates**: All controls stay synchronized as you interact with any part

---

---

## Color Input Modes

The text input section supports four different color formats:

- **RGB**: Red, Green, Blue values (0-255)
- **RGBA**: RGB + Alpha values (0-255 for RGB, 0-1 for Alpha)  
- **HSV**: Hue (0-360), Saturation (0-100%), Value (0-100%)
- **Hex**: Hexadecimal color codes (#RRGGBB)

Users can switch between modes using the dropdown and the picker will automatically convert and sync values across all input methods.
