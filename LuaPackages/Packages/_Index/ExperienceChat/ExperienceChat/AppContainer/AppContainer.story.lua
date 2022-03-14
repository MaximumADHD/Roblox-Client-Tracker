local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Roact = require(ProjectRoot.Roact)

local AppContainer = require(script.Parent)

return {
	story = function(props)
		return Roact.createElement(AppContainer, {
			messages = props.messages,
			messageHistory = props.messageHistory,
			isChatInputBarVisible = props.isChatInputBarVisible,
			isChatWindowVisible = props.isChatWindowVisible,
			targetChannelDisplayName = props.targetChannelDisplayName,
			textTimer = props.textTimer,
		})
	end,
	controls = {},
	props = {
		messages = {},
		messageHistory = {},
		isChatInputBarVisible = false,
		isChatWindowVisible = false,
		targetChannelDisplayName = "",
		textTimer = nil,
	},
}
