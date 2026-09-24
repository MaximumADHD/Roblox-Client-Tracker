local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)

local TextLabel = require(Framework.UI.Components.TextLabel)

return {
	story = function(props)
		return Roact.createElement(TextLabel, {
			AutomaticSize = Enum.AutomaticSize.XY,
			Text = "Current platform: " .. props.platform,
		})
	end,
}
