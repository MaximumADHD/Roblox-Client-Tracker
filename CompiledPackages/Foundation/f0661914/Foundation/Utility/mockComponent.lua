local Foundation = script:FindFirstAncestor("Foundation")
local React = require(Foundation.Parent.React)

local Theme = require(Foundation.Enums.Theme)
type Theme = Theme.Theme

local FoundationProvider = require(Foundation.Providers.Foundation)
local PreferencesProvider = require(Foundation.Providers.Preferences.PreferencesProvider)
local View = require(Foundation.Components.View)
type Preferences = PreferencesProvider.PreferencesProps

return function(elements, preferences: Preferences?, theme: Theme?)
	return React.createElement(FoundationProvider, {
		theme = theme or Theme.Dark,
		preferences = preferences,
	}, {
		Content = React.createElement(View, {
			Size = UDim2.fromScale(1, 1),
		}, elements),
	})
end
