local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local TimeDropdown = require(script.Parent.TimeDropdown)

return {
	summary = "TimeDropdown",
	stories = {
		{
			name = "TimeDropdown",
			story = function()
				return React.createElement(TimeDropdown, {
					onItemChanged = function() end,
				})
			end,
		},
	},
}
