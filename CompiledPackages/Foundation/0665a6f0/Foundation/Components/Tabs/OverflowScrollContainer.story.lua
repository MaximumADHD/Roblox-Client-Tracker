local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local InputSize = require(Foundation.Enums.InputSize)
local View = require(Foundation.Components.View)

local OverflowScrollContainer = require(script.Parent.OverflowScrollContainer)

return {
	controls = {
		size = Dash.values(InputSize),
	},
	story = function(props)
		-- This fills out some content so there's something to scroll through
		local children: { [string]: React.ReactNode } = {}
		for i = 1, 10 do
			children[`Child{i}`] = React.createElement("Frame", {
				Size = UDim2.fromOffset(100, 32),
			})
		end

		return React.createElement(OverflowScrollContainer, {
			size = props.size,
		}, {
			Content = React.createElement(View, {
				tag = "auto-xy row gap-small",
			}, children),
		})
	end,
}
