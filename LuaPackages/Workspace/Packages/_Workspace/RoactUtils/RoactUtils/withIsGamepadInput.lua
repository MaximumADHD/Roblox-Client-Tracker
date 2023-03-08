--[[
	Higher-order component that injects an `isGamepadInput` prop and
	rerenders whenever this value changes.
]]
local RoactUtils = script:FindFirstAncestor("RoactUtils")
local Packages = RoactUtils.Parent

local React = require(Packages.React)
local Dash = require(Packages.Dash)
local useIsGamepad = require(script.Parent.Hooks.useIsGamepad)

local function withIsGamepadInput(component)
	return function(props)
		local isGamepadInput = useIsGamepad()
		return React.createElement(
			component,
			Dash.join(props, {
				isGamepadInput = isGamepadInput,
			})
		)
	end
end

return withIsGamepadInput
