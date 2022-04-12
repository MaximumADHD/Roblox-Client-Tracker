--!strict
local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Promise = require(Packages.Promise)

local Logger = require(script.Parent.Logger)

local ChatTopBarButtonActivated = require(ExperienceChat.ChatVisibility.Actions.ChatTopBarButtonActivated)
local TargetTextChannelChanged = require(ExperienceChat.ChatInput.Actions.TargetTextChannelChanged)

return function(dispatch)
	return {
		chatTopBarButtonActivated = function()
			dispatch(ChatTopBarButtonActivated)
		end,

		onSendChat = function(message: string, targetTextChannel: TextChannel?)
			Logger:debug("onSendChat: {} to {}", message, if targetTextChannel then targetTextChannel.Name else "nil")

			if targetTextChannel then
				Promise.try(function()
					targetTextChannel:SendAsync(message)
				end)
			else
				Logger:warning("TargetTextChannel was nil!")
			end
		end,

		onTargetTextChannelChanged = function(newChannel)
			dispatch(TargetTextChannelChanged(newChannel))
		end,
	}
end
