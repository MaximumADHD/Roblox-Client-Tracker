local CorePackages = game:GetService("CorePackages")

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local ExpChat = require(CorePackages.Workspace.Packages.ExpChat)
local ExpChatShared = require(CorePackages.Workspace.Packages.ExpChatShared)
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local helpers = require(script.Parent.ExpChatMessageHelpers)
local loader = require(script.Parent.inExpChatMessagesLoader)

local afterEach = JestGlobals.afterEach
local beforeEach = JestGlobals.beforeEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local channelTabsStore = ExpChat.Stores.GetChannelTabsStore(false)

local originalStore = ExpChatShared.context.store
local originalMessagesStore = ExpChatShared.context.messagesStore
local originalAreChannelTabsEnabled = helpers.areChannelTabsEnabled
local originalGetDisplayLabel = ExpChatShared.ChannelTabDisplayLabel.getDisplayLabel
local originalFormatChannelLabel = helpers.formatChannelLabel
local originalYourServerLocalizationKey = ExpChatShared.ChannelTabDisplayLabel.LocalizationKeys.yourServer

local FFlagExpChatUseChannelTabsStore = SharedFlags.FFlagExpChatUseChannelTabsStore
local FFlagExpChatUseMessagesStore = SharedFlags.FFlagExpChatUseMessagesStore
local FFlagExpChatUseSharedChannelTabDisplayLabel = SharedFlags.FFlagExpChatUseSharedChannelTabDisplayLabel

type TabType = ExpChatShared.TabType
type TabTypesByName = { [string]: TabType }
type TestMessage = {
	messageId: string,
	userId: string,
	prefixText: string,
	text: string,
	textChannel: { Name: string }?,
	textChatMessageInstance: {
		TextSource: {
			Username: string,
		},
	},
}
type MessagesState = {
	byMessageId: { [string]: TestMessage },
	windowMessagesInOrder: { string },
	windowMessagesInOrderByTabId: { [string]: { string } },
}
type MessageData = {
	byMessageId: { [string]: TestMessage },
	windowMessagesInOrder: { string },
	windowMessagesInOrderByTabId: { [string]: { string } },
	tabTypes: TabTypesByName?,
	signalTabTypes: TabTypesByName?,
	roduxTabTypes: TabTypesByName?,
}
type RoduxChannelTab = {
	Name: string,
	Type: TabType,
	TabIndex: number,
	HasUnreadMessages: boolean,
}

local message: TestMessage = {
	messageId = "reportable-message",
	userId = "12345",
	prefixText = "Reporter:",
	text = "visible text",
	textChannel = { Name = "RBXGeneral" },
	textChatMessageInstance = {
		TextSource = {
			Username = "Reporter",
		},
	},
}

local byMessageId: { [string]: TestMessage } = {
	[message.messageId] = message,
}
local windowMessagesInOrder: { string } = { message.messageId }
local windowMessagesInOrderByTabId: { [string]: { string } } = {
	RBXGeneral = { message.messageId },
}

local defaultTabTypes: TabTypesByName = {
	RBXGeneral = "TextChat",
}

local addedSignalTabs: { [string]: boolean } = {}

local function makeRoduxChannelTabs(tabTypes: TabTypesByName?): { [string]: RoduxChannelTab }
	local allChannelTabs: { [string]: RoduxChannelTab } = {}
	for channelName, tabType in pairs(tabTypes or {}) do
		allChannelTabs[channelName] = {
			Name = channelName,
			Type = tabType,
			TabIndex = 1,
			HasUnreadMessages = false,
		}
	end
	return allChannelTabs
end

local function makeRoduxStore(messagesState: MessagesState?, tabTypes: TabTypesByName?)
	return {
		getState = function()
			return {
				ChannelTabs = {
					allChannelTabs = makeRoduxChannelTabs(tabTypes),
				},
				Messages = messagesState,
				TextChannels = {
					allTextChannels = {},
				},
			}
		end,
	}
end

local function fetchWithChannelTabsEnabled(messageData: MessageData?)
	helpers.areChannelTabsEnabled = function()
		return true
	end

	local selectedByMessageId = if messageData then messageData.byMessageId else byMessageId
	local selectedWindowMessagesInOrder = if messageData
		then messageData.windowMessagesInOrder
		else windowMessagesInOrder
	local selectedWindowMessagesInOrderByTabId = if messageData
		then messageData.windowMessagesInOrderByTabId
		else windowMessagesInOrderByTabId
	local selectedTabTypes = if messageData and messageData.tabTypes ~= nil
		then messageData.tabTypes
		else defaultTabTypes
	local signalTabTypes = if messageData and messageData.signalTabTypes ~= nil
		then messageData.signalTabTypes
		else if FFlagExpChatUseChannelTabsStore then selectedTabTypes else {}
	local roduxTabTypes = if messageData and messageData.roduxTabTypes ~= nil
		then messageData.roduxTabTypes
		else if FFlagExpChatUseChannelTabsStore then {} else selectedTabTypes

	local tabIndex = 1
	for channelName, tabType in pairs(signalTabTypes) do
		channelTabsStore.addChannelTab({
			type = tabType,
			name = channelName,
		}, tabIndex)
		addedSignalTabs[channelName] = true
		tabIndex += 1
	end

	if FFlagExpChatUseMessagesStore then
		ExpChatShared.context.store = makeRoduxStore(nil, roduxTabTypes)
		ExpChatShared.context.messagesStore = {
			getByMessageId = function()
				return selectedByMessageId
			end,
			getWindowMessagesInOrder = function()
				return selectedWindowMessagesInOrder
			end,
			getWindowMessagesInOrderByTabId = function()
				return selectedWindowMessagesInOrderByTabId
			end,
		}
	else
		ExpChatShared.context.store = makeRoduxStore({
			byMessageId = selectedByMessageId,
			windowMessagesInOrder = selectedWindowMessagesInOrder,
			windowMessagesInOrderByTabId = selectedWindowMessagesInOrderByTabId,
		}, roduxTabTypes)
		ExpChatShared.context.messagesStore = nil
	end

	return loader.fetch({})
end

local function fetchWithChannelTabsDisabled()
	helpers.areChannelTabsEnabled = function()
		return false
	end

	if FFlagExpChatUseMessagesStore then
		ExpChatShared.context.store = makeRoduxStore(nil)
		ExpChatShared.context.messagesStore = {
			getByMessageId = function()
				return byMessageId
			end,
			getWindowMessagesInOrder = function()
				return windowMessagesInOrder
			end,
			getWindowMessagesInOrderByTabId = function()
				return windowMessagesInOrderByTabId
			end,
		}
	else
		ExpChatShared.context.store = makeRoduxStore({
			byMessageId = byMessageId,
			windowMessagesInOrder = windowMessagesInOrder,
			windowMessagesInOrderByTabId = windowMessagesInOrderByTabId,
		})
		ExpChatShared.context.messagesStore = nil
	end

	return loader.fetch({})
end

local function findGroup(groups, groupId)
	for _, group in ipairs(groups) do
		if group.id == groupId then
			return group
		end
	end
	error(`Expected group {groupId}`)
end

local function makeMessage(messageId: string, channelName: string): TestMessage
	return {
		messageId = messageId,
		userId = "12345",
		prefixText = "Reporter:",
		text = "visible text",
		textChannel = if channelName == "RBXGlobal" then nil else { Name = channelName },
		textChatMessageInstance = {
			TextSource = {
				Username = "Reporter",
			},
		},
	}
end

describe("inExpChatMessagesLoader", function()
	afterEach(function()
		ExpChatShared.context.store = originalStore
		ExpChatShared.context.messagesStore = originalMessagesStore
		helpers.areChannelTabsEnabled = originalAreChannelTabsEnabled
		ExpChatShared.ChannelTabDisplayLabel.getDisplayLabel = originalGetDisplayLabel
		ExpChatShared.ChannelTabDisplayLabel.LocalizationKeys.yourServer = originalYourServerLocalizationKey
		helpers.formatChannelLabel = originalFormatChannelLabel
		for channelName in pairs(addedSignalTabs) do
			channelTabsStore.removeChannelTab(channelName)
		end
		table.clear(addedSignalTabs)
	end)

	if FFlagExpChatUseMessagesStore then
		it("returns selectable messages from the Signals messages store", function()
			local getByMessageId = jest.fn(function()
				return byMessageId
			end)
			local getWindowMessagesInOrder = jest.fn(function()
				return windowMessagesInOrder
			end)
			local getWindowMessagesInOrderByTabId = jest.fn(function()
				return windowMessagesInOrderByTabId
			end)

			ExpChatShared.context.store = makeRoduxStore(nil)
			ExpChatShared.context.messagesStore = {
				getByMessageId = getByMessageId,
				getWindowMessagesInOrder = getWindowMessagesInOrder,
				getWindowMessagesInOrderByTabId = getWindowMessagesInOrderByTabId,
			}

			return loader.fetch({}):andThen(function(groups)
				expect(#groups).toEqual(1)
				expect(groups[1].items[1].id).toEqual(message.messageId)
				expect(groups[1].items[1].label).toEqual("Reporter: visible text")
				expect(getByMessageId).toHaveBeenCalledTimes(1)
				expect(getWindowMessagesInOrder).toHaveBeenCalledTimes(1)
				expect(getWindowMessagesInOrderByTabId).toHaveBeenCalledTimes(1)
			end)
		end)

		it("returns an empty result when the Signals messages store is unavailable", function()
			ExpChatShared.context.store = makeRoduxStore(nil)
			ExpChatShared.context.messagesStore = nil

			return loader.fetch({}):andThen(function(groups)
				expect(groups).toEqual({})
			end)
		end)
	else
		it("returns selectable messages from the Rodux Messages state", function()
			ExpChatShared.context.store = makeRoduxStore({
				byMessageId = byMessageId,
				windowMessagesInOrder = windowMessagesInOrder,
				windowMessagesInOrderByTabId = windowMessagesInOrderByTabId,
			})
			ExpChatShared.context.messagesStore = nil

			return loader.fetch({}):andThen(function(groups)
				expect(#groups).toEqual(1)
				expect(groups[1].items[1].id).toEqual(message.messageId)
				expect(groups[1].items[1].label).toEqual("Reporter: visible text")
			end)
		end)

		it("returns an empty result when Rodux Messages state is unavailable", function()
			ExpChatShared.context.store = makeRoduxStore(nil)
			ExpChatShared.context.messagesStore = nil

			return loader.fetch({}):andThen(function(groups)
				expect(groups).toEqual({})
			end)
		end)
	end

	if FFlagExpChatUseSharedChannelTabDisplayLabel then
		it("uses the shared localization key when channel tabs are disabled", function()
			ExpChatShared.ChannelTabDisplayLabel.LocalizationKeys.yourServer =
				ExpChatShared.ChannelTabDisplayLabel.LocalizationKeys.moreServers

			return fetchWithChannelTabsDisabled():andThen(function(groups)
				expect(groups[1].label).toEqual("Global")
			end)
		end)
	else
		it("preserves the legacy localization key when channel tabs are disabled", function()
			ExpChatShared.ChannelTabDisplayLabel.LocalizationKeys.yourServer =
				ExpChatShared.ChannelTabDisplayLabel.LocalizationKeys.moreServers

			return fetchWithChannelTabsDisabled():andThen(function(groups)
				expect(groups[1].label).toEqual("Here")
			end)
		end)
	end

	if FFlagExpChatUseSharedChannelTabDisplayLabel then
		it("uses CoreScripts localization for channel-tab labels", function()
			return fetchWithChannelTabsEnabled():andThen(function(groups)
				expect(groups[1].label).toEqual("Here")
			end)
		end)

		it("matches channel-tab labels across reserved and custom groups", function()
			local customMessage = makeMessage("custom-message", "Announcements")
			local whisperMessage = makeMessage("whisper-message", "RBXWhisper:1_2")
			local globalMessage = makeMessage("global-message", "RBXGlobal")
			local allMessages = {
				[message.messageId] = message,
				[customMessage.messageId] = customMessage,
				[whisperMessage.messageId] = whisperMessage,
				[globalMessage.messageId] = globalMessage,
			}
			local tabTypes: TabTypesByName = {
				RBXGeneral = "TextChat",
				Announcements = "TextChat",
				["RBXWhisper:1_2"] = "TextChat",
				RBXGlobal = "UniverseChat",
			}
			local messageData: MessageData = {
				byMessageId = allMessages,
				windowMessagesInOrder = {
					message.messageId,
					customMessage.messageId,
					whisperMessage.messageId,
					globalMessage.messageId,
				},
				windowMessagesInOrderByTabId = {
					RBXGeneral = { message.messageId },
					Announcements = { customMessage.messageId },
					["RBXWhisper:1_2"] = { whisperMessage.messageId },
					RBXGlobal = { globalMessage.messageId },
				},
				tabTypes = tabTypes,
			}

			return fetchWithChannelTabsEnabled(messageData):andThen(function(groups)
				expect(findGroup(groups, "RBXGeneral").label).toEqual("Here")
				expect(findGroup(groups, "Announcements").label).toEqual("Announcements")
				expect(findGroup(groups, "RBXWhisper:1_2").label).toEqual("RBXWhisper:1_2")
				expect(findGroup(groups, "RBXGlobal").label).toEqual("Global")
			end)
		end)

		it("uses the descriptor from the store selected by the channel-tabs-store flag", function()
			local channelName = "CustomRBXGlobal"
			local universeMessage = makeMessage("custom-universe-message", channelName)
			local signalTabTypes: TabTypesByName = {
				[channelName] = "UniverseChat",
			}
			local roduxTabTypes: TabTypesByName = {
				[channelName] = "TextChat",
			}

			return fetchWithChannelTabsEnabled({
				byMessageId = {
					[universeMessage.messageId] = universeMessage,
				},
				windowMessagesInOrder = { universeMessage.messageId },
				windowMessagesInOrderByTabId = {
					[channelName] = { universeMessage.messageId },
				},
				signalTabTypes = signalTabTypes,
				roduxTabTypes = roduxTabTypes,
			}):andThen(function(groups)
				local expectedLabel = if FFlagExpChatUseChannelTabsStore then "Global" else channelName
				expect(findGroup(groups, channelName).label).toEqual(expectedLabel)
			end)
		end)

		it("uses the raw channel name when the selected store has no descriptor", function()
			local getDisplayLabel = jest.fn(function()
				error("shared resolver should not run without a descriptor")
			end)
			local formatChannelLabel = jest.fn(function()
				error("legacy formatter should not run while the flag is on")
			end)
			ExpChatShared.ChannelTabDisplayLabel.getDisplayLabel = getDisplayLabel
			helpers.formatChannelLabel = formatChannelLabel

			return fetchWithChannelTabsEnabled({
				byMessageId = byMessageId,
				windowMessagesInOrder = windowMessagesInOrder,
				windowMessagesInOrderByTabId = windowMessagesInOrderByTabId,
				signalTabTypes = {},
				roduxTabTypes = {},
			}):andThen(function(groups)
				expect(findGroup(groups, "RBXGeneral").label).toEqual("RBXGeneral")
				expect(getDisplayLabel).never.toHaveBeenCalled()
				expect(formatChannelLabel).never.toHaveBeenCalled()
			end)
		end)
	else
		it("preserves legacy channel-tab labels", function()
			local getDisplayLabel = jest.fn(function()
				error("shared resolver should not run while the flag is off")
			end)
			ExpChatShared.ChannelTabDisplayLabel.getDisplayLabel = getDisplayLabel

			return fetchWithChannelTabsEnabled():andThen(function(groups)
				expect(groups[1].label).toEqual("General")
				expect(getDisplayLabel).never.toHaveBeenCalled()
			end)
		end)
	end

	local function testSharedLabelsWithStores(useMessagesStore, useChannelTabsStore)
		describe(
			`when shared labels are on with messages store {useMessagesStore} and channel tabs store {useChannelTabsStore}`,
			function()
				local previousChannelTabsStoreFlag
				local previousLabelFlag
				local previousMessagesStoreFlag
				local dynamicChannelTabsStore
				local dynamicExpChatShared
				local dynamicHelpers
				local dynamicLoader

				beforeEach(function()
					previousChannelTabsStoreFlag =
						game:SetFastFlagForTesting("ExpChatUseChannelTabsStore3", useChannelTabsStore)
					previousLabelFlag = game:SetFastFlagForTesting("ExpChatUseSharedChannelTabDisplayLabel2", true)
					previousMessagesStoreFlag = game:SetFastFlagForTesting("ExpChatUseMessagesStore9", useMessagesStore)
					jest.resetModules()

					local UIBlox = require(CorePackages.Packages.UIBlox)
					UIBlox.init(require(CorePackages.Workspace.Packages.RobloxAppUIBloxConfig))
					local dynamicExpChat = require(CorePackages.Workspace.Packages.ExpChat)
					dynamicExpChatShared = require(CorePackages.Workspace.Packages.ExpChatShared)
					dynamicHelpers = require(script.Parent.ExpChatMessageHelpers)
					dynamicLoader = require(script.Parent.inExpChatMessagesLoader)
					dynamicHelpers.areChannelTabsEnabled = function()
						return true
					end

					dynamicChannelTabsStore = dynamicExpChat.Stores.GetChannelTabsStore(false)
					if useChannelTabsStore then
						local signalTab: ExpChatShared.TextChatTabDescriptor = {
							type = "TextChat" :: "TextChat",
							name = "RBXGeneral",
						}
						dynamicChannelTabsStore.addChannelTab(signalTab, 1)
					else
						local signalTab: ExpChatShared.UniverseChatTabDescriptor = {
							type = "UniverseChat" :: "UniverseChat",
							name = "RBXGeneral",
						}
						dynamicChannelTabsStore.addChannelTab(signalTab, 1)
					end
					local roduxTabTypes: TabTypesByName = {
						RBXGeneral = if useChannelTabsStore then "UniverseChat" else "TextChat",
					}

					if useMessagesStore then
						dynamicExpChatShared.context.store = makeRoduxStore(nil, roduxTabTypes)
						dynamicExpChatShared.context.messagesStore = {
							getByMessageId = function()
								return byMessageId
							end,
							getWindowMessagesInOrder = function()
								return windowMessagesInOrder
							end,
							getWindowMessagesInOrderByTabId = function()
								return windowMessagesInOrderByTabId
							end,
						}
					else
						dynamicExpChatShared.context.store = makeRoduxStore({
							byMessageId = byMessageId,
							windowMessagesInOrder = windowMessagesInOrder,
							windowMessagesInOrderByTabId = windowMessagesInOrderByTabId,
						}, roduxTabTypes)
						dynamicExpChatShared.context.messagesStore = nil
					end
				end)

				afterEach(function()
					dynamicChannelTabsStore.removeChannelTab("RBXGeneral")
					game:SetFastFlagForTesting("ExpChatUseChannelTabsStore3", previousChannelTabsStoreFlag)
					game:SetFastFlagForTesting("ExpChatUseSharedChannelTabDisplayLabel2", previousLabelFlag)
					game:SetFastFlagForTesting("ExpChatUseMessagesStore9", previousMessagesStoreFlag)
					jest.resetModules()
				end)

				it("uses the shared label resolver", function()
					return dynamicLoader.fetch({}):andThen(function(groups)
						expect(groups[1].label).toEqual("Here")
					end)
				end)
			end
		)
	end

	if
		not FFlagExpChatUseChannelTabsStore
		and not FFlagExpChatUseMessagesStore
		and not FFlagExpChatUseSharedChannelTabDisplayLabel
	then
		testSharedLabelsWithStores(false, false)
		testSharedLabelsWithStores(false, true)
		testSharedLabelsWithStores(true, false)
		testSharedLabelsWithStores(true, true)
	end
end)
