local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)

local Pane = require(Framework.UI.Components.Pane)

local SearchBar = require(Framework.UI.Components.SearchBar)

return Roact.createElement(Pane, {
	AutomaticSize = Enum.AutomaticSize.Y,
	Layout = Enum.FillDirection.Vertical,
	Spacing = 10,
	Size = UDim2.new(0, 300, 0, 0),
}, {
	Default = Roact.createElement(SearchBar, {
		OnSearchRequested = function(searchTerm)
			print("Search: " .. searchTerm)
		end,
		Size = UDim2.new(0, 300, 0, 32),
	}),
	WithIcon = Roact.createElement(SearchBar, {
		PlaceholderText = "With Left Icon",
		ShowSearchIcon = true,
		ShowSearchButton = false,
		OnSearchRequested = function(searchTerm)
			print("Search: " .. searchTerm)
		end,
		Size = UDim2.new(0, 300, 0, 32),
	}),
	Compact = Roact.createElement(SearchBar, {
		PlaceholderText = "Compact",
		Style = "Compact",
		ShowSearchButton = true,
		OnSearchRequested = function(searchTerm)
			print("Search: " .. searchTerm)
		end,
		Size = UDim2.new(0, 300, 0, 32),
	}),
	Incremental = Roact.createElement(SearchBar, {
		PlaceholderText = "Incremental",
		IncrementalTextSearch = true,
		OnSearchRequested = function(searchTerm)
			print("Search: " .. searchTerm)
		end,
		Size = UDim2.new(0, 300, 0, 32),
	}),
})
