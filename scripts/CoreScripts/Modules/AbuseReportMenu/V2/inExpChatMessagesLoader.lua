local CorePackages = game:GetService("CorePackages")

local ExpChat = require(CorePackages.Workspace.Packages.ExpChat)
local ExpChatShared = require(CorePackages.Workspace.Packages.ExpChatShared)
local Promise = require(CorePackages.Packages.Promise)

local helpers = require(script.Parent.ExpChatMessageHelpers)
local getChannelTabsStore = ExpChat.Stores.GetChannelTabsStore

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

		if not helpers.areChannelTabsEnabled() then
			local items = helpers.collectItems(byMessageId, messagesState.windowMessagesInOrder or {})
			helpers.annotateWhisperItems(items, byMessageId)
			if #items == 0 then
				return Promise.resolve({})
			end
			return Promise.resolve({
				-- label not shown, so don't need to be localized
				{ id = "all", label = "General", items = items },
			})
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

		return Promise.resolve(result)
	end,
}
