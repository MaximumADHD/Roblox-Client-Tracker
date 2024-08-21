local Foundation = script:FindFirstAncestor("Foundation")
local React = require(Foundation.Parent.React)

local Theme = require(Foundation.Enums.Theme)

local View = require(Foundation.Components.View)
local FoundationProvider = require(Foundation.Providers.Foundation)
local PreferencesProvider = require(Foundation.Providers.Preferences.PreferencesProvider)
type Preferences = PreferencesProvider.PreferencesProps

-- pre-load the default style rules to remove load time from benchmarks
require(Foundation.Generated.StyleRules["Desktop-Dark"])

return function(elements, preferences: Preferences?)
	return React.createElement(FoundationProvider, {
		theme = Theme.Dark,
		preferences = preferences,
	}, {
		Content = React.createElement(View, {
			Size = UDim2.new(1, 0, 1, 0),
		}, elements),
	})
end
