local Root = script.Parent
local Packages = Root.Parent
local Roact = require(Packages.Roact)
local RoactNavigation = require(Packages.RoactNavigation)

local fakeNavigation = {
	state = {
		params = {},
		routeName = "",
		key = "",
	},
	dispatch = function() end,
	goBack = function() end,
	addListener = function() end,
	isFocused = function() end,
	setParams = function() end,
	getParam = function() end,
	replace = function() end,
}

return function(element)
	return Roact.createElement(RoactNavigation.Provider, {
		value = fakeNavigation,
	}, {
		Element = element,
	})
end
