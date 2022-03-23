local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")

local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Promise = require(Packages.Promise)

local ChatTopBarButtonActivated = require(ExperienceChat.ChatVisibility.Actions.ChatTopBarButtonActivated)
local TargetTextChannelChanged = require(ExperienceChat.ChatInput.Actions.TargetTextChannelChanged)
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

		onSendChat = function(message, targetTextChannel)
			local messageId = tostring(Players.LocalPlayer.UserId) .. "-" .. HttpService:GenerateGUID(false)

			if targetTextChannel then
				Promise.try(function()
					targetTextChannel:SendAsync(message, messageId)
				end)
			else
				warn("TargetTextChannel was nil!")
			end
		end,

		onTargetTextChannelChanged = function(newChannel)
			dispatch(TargetTextChannelChanged(newChannel))
		end,
	}
end
