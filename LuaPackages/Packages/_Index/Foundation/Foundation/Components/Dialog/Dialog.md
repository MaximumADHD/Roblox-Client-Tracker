---
category: Layout
---

## Overview

A `Dialog` is a surface that's overlaid on top of app content, and is used to display contextual, or interruptive information, often requiring user interaction to dismiss. 

## Sizing Behavior

The Dialog component supports two fixed sizes:
- Small (320px wide)
- Medium (480px wide)
- Large (640px wide)

The dialog will automatically constrain itself to fit smaller viewports while maintaining appropriate spacing and proportions.

The dialog's height is automatically determined by its content.

---

## Usage

### Comprehensive Example
```lua
local Foundation = require(Packages.Foundation)
local Dialog = Foundation.Dialog
local DialogSize = Foundation.Enums.DialogSize

return React.createElement(Dialog.Root, {
		size = DialogSize.Large,
		onClose = function()
			print("Dialog closed!")
		end,
	}, {
		DialogTitle = React.createElement(Dialog.Title, {
			text = "Dialog Title",
		}),
		DialogMedia = React.createElement(Dialog.HeroMedia, {
			media = "rbxassetid://0",
			aspectRatio = 16 / 9,
		}),
		DialogContent = React.createElement(Dialog.Content, {
			LayoutOrder = 2,
		}, {
			DialogText = React.createElement(Dialog.Text, {
				Text = "Dialog body text",
			}),
		}),
		DialogActions = React.createElement(Dialog.Actions, {
			LayoutOrder = 3,
			actions = {
				{
					text = "No",
					variant = ButtonVariant.Standard,
					onActivated = function()
						print("No clicked!")
					end,
				},
				{
					text = "Yes",
					variant = ButtonVariant.Emphasis,
					icon = "icons/common/robux",
					onActivated = function()
						print("Yes clicked!")
					end,
					inputDelay = 3,
				},
			},
			label = "Actions Label",
		}),
	})
...
```
