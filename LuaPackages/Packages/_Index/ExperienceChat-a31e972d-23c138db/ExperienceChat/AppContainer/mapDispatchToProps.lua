--!strict
local TextChatService = game:GetService("TextChatService")
local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Promise = require(Packages.Promise)

local Analytics = require(ExperienceChat.Analytics)
local Logger = require(script.Parent.Logger)

local ChatTopBarButtonActivated = require(ExperienceChat.ChatVisibility.Actions.ChatTopBarButtonActivated)

return function(dispatch)
	return {
		chatTopBarButtonActivated = function()
			dispatch(ChatTopBarButtonActivated)
		end,

		onSendChat = function(message: string)
			local chatInputBarConfiguration = TextChatService:FindFirstChild("ChatInputBarConfiguration")
			local targetTextChannel = nil
			if chatInputBarConfiguration then
				targetTextChannel = chatInputBarConfiguration.TargetTextChannel
			end

			Logger:debug("onSendChat: {} to {}", message, if targetTextChannel then targetTextChannel.Name else "nil")
			if targetTextChannel then
				Promise.try(function()
					targetTextChannel:SendAsync(message)
					Analytics.FireSendAsync(targetTextChannel)
				end)
			else
				Logger:warning("TargetTextChannel was nil!")
			end
		end,
	}
end
