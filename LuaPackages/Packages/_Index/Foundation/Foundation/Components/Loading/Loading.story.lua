local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local Loading = require(Foundation.Components.Loading)
local IconSize = require(Foundation.Enums.IconSize)

return {
	summary = "Loading component",
	story = function(props)
		local controls = props.controls
		return React.createElement(Loading, {
			size = controls.size,
		})
	end,
	controls = {
		size = {
			IconSize.Large,
			IconSize.Medium,
			IconSize.Small,
		} :: { IconSize.IconSize },
	},
}
