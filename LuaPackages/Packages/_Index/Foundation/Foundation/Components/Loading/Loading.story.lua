local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local IconSize = require(Foundation.Enums.IconSize)
local Loading = require(Foundation.Components.Loading)

local function Story(props)
	local controls = props.controls
	return React.createElement(Loading, {
		size = controls.size,
	})
end

return {
	summary = "Loading component",
	stories = {
		{
			name = "Playground",
			story = Story,
		},
	},
	controls = {
		size = {
			IconSize.Large,
			IconSize.Medium,
			IconSize.Small,
		} :: { IconSize.IconSize },
	},
}
