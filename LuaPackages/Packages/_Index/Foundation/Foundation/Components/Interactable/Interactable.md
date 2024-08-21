## Overview

`Interactable` is the input handling component layer that will respond to Gui State changes using a callback function.

It accepts all props that can be passed into an `ImageButton` or the props of the custom component that is passed in as the `component` prop.

## How to Use


```lua
local YourComponent = function(props: Props)
	-- create a binding for control state to change button text and color
	local controlState, updateControlState = React.useBinding(ControlState.Initialize :: ControlState)

	-- Creating the onStateChanged function
	local onStateChanged = React.useCallback(function(newState: ControlState)
		updateControlState(newState)
		if props.onStateChanged then
			props.onStateChanged(oldState, newState)
		end
	end, { props.onStateChanged })

	-- Creating the onActivated function
	local onActivated = React.useCallback(function()
		print(props.id, " Activated")
	end, {})

	local stylePalette = useTokens()

	-- create a mapping of control state to color
	local colorMapping = React.useMemo(function()
		return {
			Initialize = stylePalette.Theme.BackgroundContrast.Color,
			Default = stylePalette.Theme.BackgroundDefault.Color,
			Hover = stylePalette.Theme.ContextualPrimaryOnHover.Color,
			Pressed = stylePalette.Theme.BackgroundOnPress.Color,
			Selected = stylePalette.Theme.SystemPrimaryDefault.Color,
			SelectedPressed = stylePalette.Theme.UIMuted.Color,
			Disabled = stylePalette.Theme.Alert.Color,
		}
	end, { stylePalette })

	return React.createElement(Focusable[Interactable], {
		...
		[React.Event.Activated] = onActivated,

		onStateChanged = onStateChanged,
		isDisabled = props.isDisabled,
		userInteractionEnabled = props.userInteractionEnabled,
	}, {
		ExampleComponent = React.createElement(Text, {
			...
			Text = controlState:map(function(state)
				return tostring(state)
			end),
			backgroundStyle = {
				Color3 = controlState:map(function(state)
					return colorMapping[state]
				end),
			},
			...
		}),
	})
end

```

### Important Notes

`onStateChanged` callback function should **never** be declared locally in a render function. For functional components, declare them in a `useCallback` hook and focus on reducing dependencies as much as possible. For class components declare them in the `Init` function.

To reduce the number of re-renders, use `Bindings` as much as possible when driving prop changes.
