local CorePackages = game:GetService("CorePackages")
local LocalizationService = game:GetService("LocalizationService")
local Players = game:GetService("Players")

local ExpChat = require(CorePackages.Workspace.Packages.ExpChat)
local ExpChatShared = require(CorePackages.Workspace.Packages.ExpChatShared)
local Localization = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization
local Promise = require(CorePackages.Packages.Promise)
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local helpers = require(script.Parent.ExpChatMessageHelpers)
local enrichMissingUsernames = require(script.Parent.inExpChatMessagesLoaderUsernameEnrichment).enrichMissingUsernames

local ChannelTabDisplayLabel = ExpChatShared.ChannelTabDisplayLabel
local getChannelTabsStore = ExpChat.Stores.GetChannelTabsStore

local FFlagExpChatUseChannelTabsStore = SharedFlags.FFlagExpChatUseChannelTabsStore
local FFlagExpChatUseMessagesStore = SharedFlags.FFlagExpChatUseMessagesStore
local FFlagExpChatUseSharedChannelTabDisplayLabel = SharedFlags.FFlagExpChatUseSharedChannelTabDisplayLabel

local locales = Localization.new(LocalizationService.RobloxLocaleId)

local function getLocalizedChannelTabLabels()
	local localizationKeys = ChannelTabDisplayLabel.LocalizationKeys
	return {
		yourServer = locales:Format(localizationKeys.yourServer),
		moreServers = locales:Format(localizationKeys.moreServers),
		friends = locales:Format(localizationKeys.friends),
		system = locales:Format(localizationKeys.system),
		team = locales:Format(localizationKeys.team),
	}
end

-- Loader descriptor for the abuse-report chat-selection dialog. Reads live
-- message state from exp-chat and groups messages by channel tab (when enabled)
-- so the reporter sees the same layout as the in-experience chat.
return {
	type = "groupedListItem",
	fetch = function(_params)
		local store = ExpChatShared.context.store
		if not store then
			return Promise.resolve({})
		end

		local state = store:getState()
		local byMessageId
		local windowMessagesInOrder
		local windowMessagesInOrderByTabId

		if FFlagExpChatUseMessagesStore then
			local messagesStore = ExpChatShared.context.messagesStore
			if not messagesStore then
				return Promise.resolve({})
			end
			byMessageId = messagesStore.getByMessageId(false) or {}
			windowMessagesInOrder = messagesStore.getWindowMessagesInOrder(false) or {}
			windowMessagesInOrderByTabId = messagesStore.getWindowMessagesInOrderByTabId(false) or {}
		else
			local messagesState = state and state.Messages
			if not messagesState then
				return Promise.resolve({})
			end
			byMessageId = messagesState.byMessageId or {}
			windowMessagesInOrder = messagesState.windowMessagesInOrder or {}
			windowMessagesInOrderByTabId = messagesState.windowMessagesInOrderByTabId or {}
		end

		local translator = ExpChatShared.context.translator

		-- Creator custom channel tabs are disabled, but we still need to handle global and general tabs
		if not helpers.areChannelTabsEnabled() then
			local allMessageIds = windowMessagesInOrder
			local generalMessageIds = {}
			local globalMessageIds = {}

			for _, messageId in ipairs(allMessageIds) do
				local message = byMessageId[messageId]
				if message then
					if message.textChannel then
						table.insert(generalMessageIds, messageId)
					else
						table.insert(globalMessageIds, messageId)
					end
				end
			end

			local result = {}

			local generalItems = helpers.collectItems(byMessageId, generalMessageIds)
			helpers.annotateWhisperItems(
				generalItems,
				byMessageId,
				locales:Format("Feature.ReportAbuse.Label.SentPrivately")
			)
			if #generalItems > 0 then
				table.insert(result, {
					id = helpers.CHANNEL_GENERAL,
					label = locales:Format(
						if FFlagExpChatUseSharedChannelTabDisplayLabel
							then ChannelTabDisplayLabel.LocalizationKeys.yourServer
							else "CoreScripts.TextChat.ChannelTabs.Here"
					),
					items = generalItems,
				})
			end

			local globalItems = helpers.collectItems(byMessageId, globalMessageIds)
			if #globalItems > 0 then
				table.insert(result, {
					id = helpers.CHANNEL_GLOBAL,
					label = locales:Format("CoreScripts.TextChat.ChannelTabs.Global2"),
					items = globalItems,
				})
			end

			return enrichMissingUsernames(result)
		end

		local tabIds = windowMessagesInOrderByTabId
		local allTextChannels = state.TextChannels and state.TextChannels.allTextChannels or {}

		-- Tab ordering from the Signals-based ChannelTabsStore (populated when
		-- FFlagExpChatUseChannelTabsStore is on). Falls back to alphabetical
		-- when the store is empty.
		local allChannelTabs = getChannelTabsStore(false).getChannelTabsState(false).allChannelTabs

		local localizedChannelTabLabels = if FFlagExpChatUseSharedChannelTabDisplayLabel
			then getLocalizedChannelTabLabels()
			else nil
		local groups = {}
		local groupOrder = {}
		for channelName, messageIds in pairs(tabIds) do
			local items = helpers.collectItems(byMessageId, messageIds)
			if #items > 0 then
				local label
				if FFlagExpChatUseSharedChannelTabDisplayLabel then
					local tabType
					if FFlagExpChatUseChannelTabsStore then
						local channelTab = allChannelTabs[channelName]
						tabType = if channelTab then channelTab.type else nil
					else
						local roduxChannelTabs = state.ChannelTabs and state.ChannelTabs.allChannelTabs
						local channelTab = roduxChannelTabs and roduxChannelTabs[channelName]
						tabType = if channelTab then channelTab.Type else nil
					end

					label = if tabType
						then ChannelTabDisplayLabel.getDisplayLabel(
							tabType,
							channelName,
							allTextChannels[channelName],
							Players.LocalPlayer,
							localizedChannelTabLabels :: any
						)
						else channelName
				else
					label = helpers.localizeString(
						translator,
						helpers.formatChannelLabel(channelName, allTextChannels[channelName])
					)
				end
				table.insert(groupOrder, channelName)
				groups[channelName] = {
					id = channelName,
					label = label,
					items = items,
				}
			end
		end

		table.sort(groupOrder, function(a, b)
			local tabA = allChannelTabs[a]
			local tabB = allChannelTabs[b]
			if tabA and tabB then
				return tabA.tabIndex < tabB.tabIndex
			end
			if tabA then
				return true
			end
			if tabB then
				return false
			end
			if a == helpers.CHANNEL_GENERAL then
				return true
			end
			if b == helpers.CHANNEL_GENERAL then
				return false
			end
			return a < b
		end)

		local result = {}
		for _, channelName in ipairs(groupOrder) do
			table.insert(result, groups[channelName])
		end

		return enrichMissingUsernames(result)
	end,
}
