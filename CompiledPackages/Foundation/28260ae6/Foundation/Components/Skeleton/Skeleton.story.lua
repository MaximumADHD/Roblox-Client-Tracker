local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Radius = require(Foundation.Enums.Radius)
local Skeleton = require(Foundation.Components.Skeleton)

return {
	summary = "Skeleton component",
	story = function(props)
		return React.createElement(Skeleton, {
			radius = props.controls.radius,
			Size = UDim2.fromOffset(100, 100),
		})
	end,
	controls = {
		radius = Dash.values(Radius),
	},
}
