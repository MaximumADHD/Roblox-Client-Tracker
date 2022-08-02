--!strict
local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")
local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Promise = require(Packages.Promise)
local List = require(Packages.llama).List

local Analytics = require(ExperienceChat.Analytics)
local Logger = require(script.Parent.Logger)
local Config = require(ExperienceChat.Config)

local ChatTopBarButtonActivated = require(ExperienceChat.Actions.ChatTopBarButtonActivated)

return function(dispatch)
	return {
		chatTopBarButtonActivated = function()
			dispatch(ChatTopBarButtonActivated)
		end,

		onSendChat = function(message: string)
			local chatInputBarConfiguration = TextChatService:FindFirstChildOfClass("ChatInputBarConfiguration")
			local targetTextChannel = nil
			if chatInputBarConfiguration then
				targetTextChannel = chatInputBarConfiguration.TargetTextChannel
			end

			Logger:debug("onSendChat: {} to {}", message, if targetTextChannel then targetTextChannel.Name else "nil")
			if targetTextChannel then
				Promise.try(function()
					targetTextChannel:SendAsync(message)

					local numParticipants = List.count(targetTextChannel:GetChildren(), function(instance)
						return instance:IsA("TextSource")
					end)

					local args = {
						channelName = targetTextChannel.Name,
						senderUserId = if Players.LocalPlayer then Players.LocalPlayer.UserId else nil,
						numParticipants = numParticipants,
						isDefaultChannel = if Config[targetTextChannel.Name] then "true" else "false",
					}

					Analytics.FireClientAnalyticsWithEventName("LuaMessageSent", args)
				end):catch(function(e)
					warn(e.error)
				end)
			else
				Logger:warning("TargetTextChannel was nil!")
			end
		end,
	}
end
