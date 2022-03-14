local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Rodux = require(ProjectRoot.Rodux)

return Rodux.makeActionCreator(script.Name, function(textChatMessage)
	return {
		TextChannel = {
			Name = textChatMessage.TextChannel.Name,
		},
		MessageId = textChatMessage.MessageId,
		TextSource = {
			UserId = textChatMessage.TextSource.UserId,
		},
		Text = textChatMessage.Text,
	}
end)
