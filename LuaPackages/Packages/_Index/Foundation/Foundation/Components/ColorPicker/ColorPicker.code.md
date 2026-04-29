---
category: Inputs
---

## Overview

ColorPicker allows the user to select a color using raw color values or a standard color picker interface.

---

## Usage

ColorPicker is designed to be controlled by the consumer. The main props to supply are `onColorChanged` and optionally `onAlphaChanged` to handle color selection events.

### Basic Color Picker

```luau
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

```luau
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

```luau
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
