--[[
	Reusable helpers for working with exp-chat message and channel data.
	Mirrors logic from exp-chat's ChannelTab.lua and message reducers.

	Designed to be portable: when ready, move this file to exp-chat-shared and
	update the require path.
]]
local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

-- See also chat-line-reporting Constants.ChannelTypes for the same strings.
local CHANNEL_GENERAL = "RBXGeneral"
local CHANNEL_SYSTEM = "RBXSystem"
local CHANNEL_TEAM_PREFIX = "RBXTeam"
local CHANNEL_WHISPER_PREFIX = "RBXWhisper"
local CHANNEL_GLOBAL = "RBXGlobal"

local CorePackages = game:GetService("CorePackages")
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagEnableGlobalChatAbuseReporting = SharedFlags.FFlagEnableGlobalChatAbuseReporting

local ExpChatMessageHelpers = {}

ExpChatMessageHelpers.CHANNEL_GENERAL = CHANNEL_GENERAL
ExpChatMessageHelpers.CHANNEL_GLOBAL = CHANNEL_GLOBAL

-- Mirrors what exp-chat checks in mountClientApp to decide whether the channel
-- bar is visible. Developer opt-in: add ChannelTabsConfiguration under
-- TextChatService and set Enabled = true.
function ExpChatMessageHelpers.areChannelTabsEnabled(): boolean
	if not game:GetEngineFeature("EnableChannelTabsConfiguration") then
		return false
	end
	local config = TextChatService:FindFirstChildOfClass("ChannelTabsConfiguration")
	return config ~= nil and config.Enabled
end

-- Mirrors what GameLocalization.connect does internally: run the string through
-- the game translator so developers who provide localization entries get
-- translated channel labels. Caller passes the translator so this module stays
-- free of context imports.
function ExpChatMessageHelpers.localizeString(translator: any?, text: string): string
	if not translator then
		return text
	end
	local ok, result = pcall(translator.TranslateGameText, translator, game, text)
	return if ok and type(result) == "string" then result else text
end

-- TODO: [future] re-use existing helpers from exp-chat? (abech)
-- TODO: [future] do any experience (ab)use system messages when having alternate chat
--       interfaces? (abech)
function ExpChatMessageHelpers.isSystemMessage(message): boolean
	if message.textChannel and message.textChannel.Name == CHANNEL_SYSTEM then
		return true
	end
	return if not message.userId or message.userId == "0" then true else false
end

-- Mirrors the naming logic in exp-chat ChannelTab.lua's GameLocalization.connect.
-- Duplication is intentional to avoid modifying exp-chat; a follow-up can
-- extract a shared utility.
-- Note: the Messages reducer remaps RBXSystem -> RBXGeneral before storing into
-- windowMessagesInOrderByTabId, so the RBXSystem branch is omitted here.
function ExpChatMessageHelpers.formatChannelLabel(channelName: string, textChannel: TextChannel?): string
	if string.find(channelName, CHANNEL_GENERAL) then
		return "General"
	elseif string.find(channelName, "^" .. CHANNEL_TEAM_PREFIX) then
		return "Team"
	elseif string.find(channelName, "^" .. CHANNEL_WHISPER_PREFIX) then
		if textChannel and Players.LocalPlayer then
			for _, child in ipairs(textChannel:GetChildren()) do
				if child:IsA("TextSource") then
					local player = Players:GetPlayerByUserId(child.UserId)
					if player and player ~= Players.LocalPlayer then
						return player.DisplayName
					end
				end
			end
		end
		return "Whisper"
	elseif FFlagEnableGlobalChatAbuseReporting and channelName == CHANNEL_GLOBAL then
		return "Global"
	end
	return channelName
end

-- TODO: [future] reuse implementation from exp-chat? (abech)
function ExpChatMessageHelpers.formatMessageLabel(message): string
	local prefix = message.prefixText or ""
	local text = message.text or ""
	return if #prefix > 0 then prefix .. " " .. text else text
end

-- Resolves an ordered list of message IDs into selectable list items,
-- filtering out system messages that aren't reportable.
function ExpChatMessageHelpers.collectItems(byMessageId, messageIds)
	local items = {}
	for _, id in ipairs(messageIds) do
		local message = byMessageId[id]
		if message and not ExpChatMessageHelpers.isSystemMessage(message) then
			table.insert(items, {
				id = message.messageId,
				label = ExpChatMessageHelpers.formatMessageLabel(message),
			})
		end
	end
	return items
end

-- Prepends "[Sent privately]" to whisper message labels. Only needed when
-- channel tabs are disabled and all messages appear in a single flat list;
-- with tabs enabled, whispers are already in their own group.
function ExpChatMessageHelpers.annotateWhisperItems(items, byMessageId)
	for _, item in ipairs(items) do
		local message = byMessageId[item.id]
		if
			message
			and message.textChannel
			and typeof(message.textChannel.Name) == "string"
			and string.sub(message.textChannel.Name, 1, #CHANNEL_WHISPER_PREFIX) == CHANNEL_WHISPER_PREFIX
		then
			-- TODO: [future] localization
			item.label = "[Sent privately] " .. item.label
		end
	end
end

return ExpChatMessageHelpers
