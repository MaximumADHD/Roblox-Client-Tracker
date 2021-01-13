local Framework = script.Parent.Parent.Parent
local Roact = require(Framework.Parent.Roact)

local UI = require(Framework.UI)
local Container = UI.Container

local StudioUI = require(Framework.StudioUI)
local SearchBar = StudioUI.SearchBar

return function()
	return Roact.createElement(Container, {
		Size = UDim2.new(1, 0, 0, 30)
	}, {
		SearchBar = Roact.createElement(SearchBar, {
			OnSearchRequested = function(searchTerm)
				print("Search: " .. searchTerm)
			end
		})
	})
end
