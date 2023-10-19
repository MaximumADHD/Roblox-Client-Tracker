local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Roact = require(ProjectRoot.Roact)
local Config = require(ProjectRoot.ExperienceChat.Config)

local TextMessageLabel = require(script.Parent)

return {
	story = function(props)
		return Roact.createElement(TextMessageLabel, {
			message = {
				text = props.controls.text,
				prefixText = props.controls.prefixText,
				userId = 0,
			},
			isUserVerified = props.controls.isUserVerified,
			onTextMessageLabelButtonActivated = function() end,
			chatWindowSettings = {
				FontFace = Config.ChatWindowFont,
				TextColor3 = Config.ChatWindowTextColor3,
				TextSize = Config.ChatWindowTextSize,
				TextStrokeColor3 = Config.ChatWindowTextStrokeColor,
				TextStrokeTransparency = Config.ChatWindowTextStrokeTransparency,
				BackgroundColor3 = Config.ChatWindowBackgroundColor3,
				BackgroundTransparency = Config.ChatWindowBackgroundTransparency,
			},
			LayoutOrder = 0,
			textStrokeTransparency = 0,
			textTransparency = 0,
		})
	end,
	controls = {
		text = "Sample text chat message text!",
		prefixText = '<font color="#FFA500">PrefixText</font>',
		isUserVerified = true,
	},
	props = {},
}
