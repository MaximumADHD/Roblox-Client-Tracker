local dependencies = require(script.Parent.Parent.Parent.dependencies)
local Roact = dependencies.Roact
local RoactNavigation = dependencies.RoactNavigation

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
}

return function(element)
	return Roact.createElement(RoactNavigation.Provider, {
		value = fakeNavigation,
	}, {
		Element = element,
	})
end
