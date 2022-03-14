local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Roact = require(ProjectRoot.Roact)

local ChatWindow = require(script.Parent)

return {
	summary = "ChatWindow concept with ScrollingView and TextMessageLabel. Currently children are static"
		.. " but in the future ChatWindow will parse text chat messages and convert into children.",
	story = function(props)
		return Roact.createElement(ChatWindow, {
			size = props.size,
			messages = props.messages,
			messageHistory = props.messageHistory,
			messageLimit = props.messageLimit,
			mutedUserIds = props.mutedUserIds,
		})
	end,
	controls = {},
	props = {
		size = UDim2.fromOffset(350, 100),
		messages = {
			id1 = {
				PrefixText = "Player1",
				Text = "Hello world!",
			},
			id2 = {
				PrefixText = "<font color='#AA55AA'>Player2</font>",
				Text = "Nice work.",
			},
		},
		messageHistory = {
			RBXAll = { "id1", "id2" },
		},
	},
}
