---
category: Layout
---

## Overview

`Dialogs` create a temporary, purposeful exchange (or dialog) between a user and our platform, helping surface important information or require user input without disrupting the larger experience.

By default, Dialog renders in the center of its parent component without portaling to the root. If you need to portal the Dialog to the root (for example, to ensure it's always on top of other UI elements), you can set `disablePortal = false`.

The Dialog component does not include a backdrop by default. You can add a backdrop by setting `hasBackdrop = true` if you want to visually separate the dialog from the rest of the UI.

If your application has its own modal window management system, you can render Dialog directly within it instead of using the built-in portal functionality.

## Sizing Behavior

The Dialog component supports 3 fixed sizes:
- `DialogSize.Small` (320px wide)
- `DialogSize.Medium` (480px wide)
- `DialogSize.Large` (640px wide)

The dialog will automatically constrain itself to fit smaller viewports while maintaining appropriate spacing and proportions.

The dialog's height is automatically determined by its content.

## Close Behavior

The `onClose` callback is called when the dialog should be closed. It receives a `reason` parameter of type `OnCloseCallbackReason` that indicates how the dialog was closed:
- `OnCloseCallbackReason.BackdropClick`: User clicked the backdrop (overlay) behind the dialog

This allows you to handle different close scenarios appropriately, such as showing a confirmation prompt when closing via backdrop click.

---

## Usage

### Comprehensive Example
```lua
local Foundation = require(Packages.Foundation)
local Dialog = Foundation.Dialog
local DialogSize = Foundation.Enums.DialogSize

return React.createElement(Dialog.Root, {
		size = DialogSize.Large,
		onClose = function(reason)
			print("Dialog closed! Reason:", reason)
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
```

### Confirm Dialog Example
```lua
local Foundation = require(Packages.Foundation)
local Dialog = Foundation.Dialog
local DialogSize = Foundation.Enums.DialogSize
local ButtonVariant = Foundation.Enums.ButtonVariant

local function ConfirmDialog(props)
    return React.createElement(Dialog.Root, {
        size = DialogSize.Small,
		hasBackdrop = true,
        onClose = function(reason)
            if reason == OnCloseCallbackReason.BackdropClick then
                -- Optionally prevent closing on backdrop click
                return
            end
            props.onClose()
        end,
    }, {
        DialogTitle = React.createElement(Dialog.Title, {
            text = "Confirm Action",
        }),
        DialogContent = React.createElement(Dialog.Content, nil, {
            DialogText = React.createElement(Dialog.Text, {
                Text = "Are you sure you want to proceed with this action?",
            }),
        }),
        DialogActions = React.createElement(Dialog.Actions, {
            actions = {
                {
                    text = "Cancel",
                    variant = ButtonVariant.Standard,
                    onActivated = props.onCancel,
                },
                {
                    text = "Confirm",
                    variant = ButtonVariant.Emphasis,
                    onActivated = props.onConfirm,
                },
            },
        }),
    })
end
```
