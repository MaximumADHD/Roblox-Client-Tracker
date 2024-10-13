local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)
local Dash = require(Packages.Dash)

local Skeleton = require(Foundation.Components.Skeleton)
local Radius = require(Foundation.Enums.Radius)

return {
	summary = "Skeleton component",
	story = function(props)
		return React.createElement(Skeleton, {
			radius = props.controls.radius,
			Size = UDim2.new(0, 100, 0, 100),
		})
	end,
	controls = {
		radius = Dash.values(Radius),
	},
}
