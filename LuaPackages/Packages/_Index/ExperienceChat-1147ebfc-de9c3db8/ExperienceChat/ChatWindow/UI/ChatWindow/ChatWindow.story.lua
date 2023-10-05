local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Roact = require(ProjectRoot.Roact)
local Config = require(ProjectRoot.ExperienceChat.Config)

local ChatWindow = require(script.Parent)

return {
	summary = "ChatWindow concept with ScrollingView and TextMessageLabel. Currently children are static"
		.. " but in the future ChatWindow will parse text chat messages and convert into children.",
	story = function(props)
		return Roact.createElement(ChatWindow, {
			size = props.size,
			messages = props.messages,
			mutedUserIds = props.mutedUserIds,
			chatWindowSettings = {
				Font = Config.ChatWindowFont,
				TextColor3 = Config.ChatWindowTextColor3,
				TextSize = Config.ChatWindowTextSize,
				TextStrokeColor3 = Config.ChatWindowTextStrokeColor,
				TextStrokeTransparency = Config.ChatWindowTextStrokeTransparency,
				BackgroundColor3 = Config.ChatWindowBackgroundColor3,
				BackgroundTransparency = Config.ChatWindowBackgroundTransparency,
			},
		})
	end,
	controls = {},
	props = {
		size = UDim2.fromOffset(350, 100),
		messages = {
			{
				prefixText = "Player1",
				text = "Hello world!",
				timestamp = DateTime.fromUnixTimestamp(1),
				userId = "1",
				status = Enum.TextChatMessageStatus.Success,
				visible = true,
			},
			{
				prefixText = "<font color='#AA55AA'>Player2</font>",
				text = "Nice work.",
				timestamp = DateTime.fromUnixTimestamp(2),
				userId = "2",
				status = Enum.TextChatMessageStatus.Success,
				visible = true,
			},
		},
	},
}
