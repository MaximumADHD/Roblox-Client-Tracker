local Foundation = script:FindFirstAncestor("Foundation")
local React = require(Foundation.Parent.React)

local ColorMode = require(Foundation.Enums.ColorMode)
type ColorMode = ColorMode.ColorMode

local FoundationProvider = require(Foundation.Providers.Foundation)
local PreferencesProvider = require(Foundation.Providers.Preferences.PreferencesProvider)
local View = require(Foundation.Components.View)
type Preferences = PreferencesProvider.PreferencesProps

return function(elements, preferences: Preferences?, theme: ColorMode?)
	return React.createElement(FoundationProvider, {
		theme = theme or ColorMode.Dark,
		preferences = preferences,
	}, {
		Content = React.createElement(View, {
			Size = UDim2.fromScale(1, 1),
		}, elements),
	})
end
