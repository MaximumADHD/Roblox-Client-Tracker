local HttpService = game:GetService("HttpService")

local Utils = require(script.Utils)
local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local SendChatMessage = require(ProjectRoot.ExperienceChat.ChatMessages.Actions.SendChatMessage)

local mapCommandToHandler = {
	mute = require(script.Commands.MuteUnmuteCommand),
	t = require(script.Commands.TeamChatCommand),
	team = require(script.Commands.TeamChatCommand),
	unmute = require(script.Commands.MuteUnmuteCommand),
	help = require(script.Commands.HelpCommand),
}

return function(store, outgoingString)
	local command = Utils.isCommand(outgoingString)
	if command then
		local commandHandler = mapCommandToHandler[command]
		local systemMessage = commandHandler(store, command, outgoingString)

		if systemMessage then
			-- TODO: replace with actual textchatmessage constructor
			local textChatMessage = {
				TextChannel = {
					Name = "RBXGeneral",
				},
				MessageId = HttpService:GenerateGUID(false),
				TextSource = {
					UserId = -100,
				},
				Text = systemMessage,
			}

			store:dispatch(SendChatMessage(textChatMessage))
		end
	end

	return command
end
