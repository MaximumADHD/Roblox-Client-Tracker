local Packages = script.Parent.Parent.Parent
local Roact = require(Packages.Roact)
local NavigationContext = require(script.Parent.NavigationContext)
local validate = require(script.Parent.Parent.utils.validate)

--[[
	withNavigation() is a convenience function that you can use in your component's
	render function to access the navigation context object. For example:

	function MyComponent:render()
		return withNavigation(function(navigation)
			return Roact.createElement("TextButton", {
				[Roact.Activated] = function()
					navigation.navigate("DetailPage")
				end
			})
		end)
	end
]]
return function(renderProp)
	validate(renderProp ~= nil, "withNavigation must be passed a render prop")
	return Roact.createElement(NavigationContext.Consumer, {
		render = renderProp
	})
end
