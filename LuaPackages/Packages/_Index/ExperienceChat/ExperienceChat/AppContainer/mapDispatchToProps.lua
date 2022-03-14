local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Promise = require(Packages.Promise)

local ChatTopBarButtonActivated = require(ExperienceChat.ChatVisibility.Actions.ChatTopBarButtonActivated)
local TargetChannelDisplayNameChanged = require(ExperienceChat.ChatInput.Actions.TargetChannelDisplayNameChanged)
local TextChatServiceChatWindowPropertyChanged = require(
	ExperienceChat.ChatVisibility.Actions.TextChatServiceChatWindowPropertyChanged
)

return function(dispatch)
	return {
		chatTopBarButtonActivated = function()
			dispatch(ChatTopBarButtonActivated)
		end,

		textChatServiceChatWindowPropertyChanged = function()
			dispatch(TextChatServiceChatWindowPropertyChanged)
		end,

		-- * @TODO remove SendChatMessage action and related elements when bridge to SendAsync is done
		onSendChat = function(message, targetChannelDisplayName)
			-- generate messageId
			local channel
			local messageId = tostring(Players.LocalPlayer.UserId) .. "-" .. HttpService:GenerateGUID(false)

			if targetChannelDisplayName == "[Team]" then
				local team = Players.LocalPlayer.Team
				if team then
					local channelName = "RBXTeam" .. tostring(team.TeamColor.Name)
					channel = TextChatService:FindFirstChild(channelName, true)
				end
			else
				channel = TextChatService:FindFirstChild("RBXGeneral", true)
			end

			if channel then
				Promise.try(function()
					channel:SendAsync(message, messageId)
				end)
			end
		end,

		onTargetChannelChanged = function(newChannelName)
			dispatch(TargetChannelDisplayNameChanged(newChannelName))
		end,
	}
end
