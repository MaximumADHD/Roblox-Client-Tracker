local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Roact = require(ProjectRoot.Roact)

local TextMessageLabel = require(script.Parent)

return {
	story = function(props)
		return Roact.createElement(TextMessageLabel, {
			message = {
				text = props.controls.text,
				prefixText = props.controls.prefixText,
			},
			onTextMessageLabelButtonActivated = function() end,
		})
	end,
	controls = {
		text = "Sample text chat message text!",
		prefixText = '<font color="#FFA500">PrefixText</font>',
	},
	props = {},
}
