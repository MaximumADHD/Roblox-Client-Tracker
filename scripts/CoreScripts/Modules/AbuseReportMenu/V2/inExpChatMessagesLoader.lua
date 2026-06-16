local CorePackages = game:GetService("CorePackages")
local LocalizationService = game:GetService("LocalizationService")

local ExpChat = require(CorePackages.Workspace.Packages.ExpChat)
local ExpChatShared = require(CorePackages.Workspace.Packages.ExpChatShared)
local Localization = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization
local Promise = require(CorePackages.Packages.Promise)

local helpers = require(script.Parent.ExpChatMessageHelpers)
local enrichMissingUsernames = require(script.Parent.inExpChatMessagesLoaderUsernameEnrichment).enrichMissingUsernames
local getChannelTabsStore = ExpChat.Stores.GetChannelTabsStore

local locales = Localization.new(LocalizationService.RobloxLocaleId)

-- Loader descriptor for the abuse-report chat-selection dialog. Reads live
-- message state from exp-chat's Redux store and groups messages by channel tab
-- (when enabled) so the reporter sees the same layout as the in-experience chat.
return {
	type = "groupedListItem",
	fetch = function(_params)
		-- TODO: [future] work through and validate this properly (abech)
		local store = ExpChatShared.context.store
		if not store then
			return Promise.resolve({})
		end

		local state = store:getState()
		local messagesState = state and state.Messages
		if not messagesState then
			return Promise.resolve({})
		end

		local byMessageId = messagesState.byMessageId or {}
		local translator = ExpChatShared.context.translator

		-- Creator custom channel tabs are disabled, but we still need to handle global and general tabs
		if not helpers.areChannelTabsEnabled() then
			local allMessageIds = messagesState.windowMessagesInOrder or {}
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
					label = locales:Format("CoreScripts.TextChat.ChannelTabs.Here"), -- TODO: ExpChatShared should probably export this
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

		local tabIds = messagesState.windowMessagesInOrderByTabId or {}
		local allTextChannels = state.TextChannels and state.TextChannels.allTextChannels or {}

		-- Tab ordering from the Signals-based ChannelTabsStore (populated when
		-- FFlagExpChatUseChannelTabsStore is on). Falls back to alphabetical
		-- when the store is empty.
		local allChannelTabs = getChannelTabsStore(false).getChannelTabsState(false).allChannelTabs

		local groups = {}
		local groupOrder = {}
		for channelName, messageIds in pairs(tabIds) do
			local items = helpers.collectItems(byMessageId, messageIds)
			if #items > 0 then
				local label = helpers.formatChannelLabel(channelName, allTextChannels[channelName])
				table.insert(groupOrder, channelName)
				groups[channelName] = {
					id = channelName,
					-- TODO: [future] verify that this works as expected (abech)
					label = helpers.localizeString(translator, label),
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
