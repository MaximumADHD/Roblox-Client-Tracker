local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Radius = require(Foundation.Enums.Radius)
local Skeleton = require(Foundation.Components.Skeleton)

local function Story(props)
	return React.createElement(Skeleton, {
		radius = props.controls.radius,
		Size = UDim2.fromOffset(100, 100),
	})
end

return {
	summary = "Skeleton component",
	stories = {
		{
			name = "Playground",
			story = Story,
		},
	},
	controls = {
		radius = Dash.values(Radius),
	},
}
