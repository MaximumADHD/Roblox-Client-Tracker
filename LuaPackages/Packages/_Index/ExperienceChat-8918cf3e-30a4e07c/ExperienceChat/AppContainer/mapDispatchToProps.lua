local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Promise = require(Packages.Promise)
local List = require(Packages.llama).List

local Analytics = require(ExperienceChat.Analytics)
local Logger = require(script.Parent.Logger)
local Config = require(ExperienceChat.Config)
local autoCastCommand = require(ExperienceChat.Commands.autoCastCommand)
local RBXWhisperCommand = require(ExperienceChat.Commands.Whisper.RBXWhisperCommand)

local ChatInputBarResetTargetChannel = require(ExperienceChat.Actions.ChatInputBarResetTargetChannel)
local UserInteraction = require(ExperienceChat.Actions.UserInteraction)
local ChatTranslationGlobalToggled = require(ExperienceChat.Actions.ChatTranslationGlobalToggled)
local ChatTranslationMessageToggled = require(ExperienceChat.Actions.ChatTranslationMessageToggled)

local getFFlagChatTranslationUIEnabled = require(ExperienceChat.Flags.getFFlagChatTranslationUIEnabled)

return function(dispatch)
	return {
		activateWhisperMode = function(toWhisperUserId: number)
			local toWhisperUser = Players:GetPlayerByUserId(toWhisperUserId)
			local localPlayer = Players.LocalPlayer
			if not toWhisperUser then
				return
			end
			if toWhisperUser == localPlayer then
				return
			end

			assert(localPlayer, "Players.LocalPlayer should be non-nil")

			local toWhisperUsername = toWhisperUser.Name
			local promises = {
				autoCastCommand(RBXWhisperCommand, localPlayer.UserId, "/w @" .. toWhisperUsername),
			}
			Promise.any(promises):catch(function(error)
				Logger:debug("Could not send autoCastCommand. Error: {}", error)
			end)
		end,

		onToggleTranslation = if getFFlagChatTranslationUIEnabled()
			then function(useTranslation: boolean)
				dispatch(ChatTranslationGlobalToggled(useTranslation))
			end
			else nil,

		onToggleIndividualTranslation = if getFFlagChatTranslationUIEnabled()
			then function(useTranslation: boolean, messageId: string)
				local args = {
					useTranslation = useTranslation,
					senderUserId = if Players.LocalPlayer then Players.LocalPlayer.UserId else nil,
					localeId = if Players.LocalPlayer then Players.LocalPlayer.LocaleId else nil,
				}

				Analytics.FireClientAnalyticsWithEventName("MessageTranslationToggled", args)

				dispatch(ChatTranslationMessageToggled(useTranslation, messageId))
			end
			else nil,

		resetTargetChannel = function()
			dispatch(ChatInputBarResetTargetChannel())
		end,

		onHovered = function()
			dispatch(UserInteraction("hover"))
		end,

		onUnhovered = function()
			dispatch(UserInteraction("unhover"))
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
