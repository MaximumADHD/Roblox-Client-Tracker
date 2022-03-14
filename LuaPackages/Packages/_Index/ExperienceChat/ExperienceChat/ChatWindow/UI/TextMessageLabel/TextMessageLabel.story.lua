local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Roact = require(ProjectRoot.Roact)

local TextMessageLabel = require(script.Parent)

return {
	story = function(props)
		return Roact.createElement(TextMessageLabel, {
			textChatMessage = {
				Text = props.controls.text,
				PrefixText = props.controls.prefixText,
			},
		})
	end,
	controls = {
		text = "Sample text chat message text!",
		prefixText = '<font color="#FFA500">PrefixText</font>',
	},
	props = {
		textChatMessage = {
			Text = "",
			PrefixText = "",
		},
	},
}
