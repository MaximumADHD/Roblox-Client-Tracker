local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Roact = require(ProjectRoot.Roact)

local App = require(script.Parent.App)

return {
	story = function(props)
		return Roact.createElement(App, {
			isDefaultChatEnabled = props.isDefaultChatEnabled,
		})
	end,
	controls = {},
	props = {},
}
