local CorePackages = game:GetService("CorePackages")

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local afterEach = JestGlobals.afterEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local ExpChatShared = require(CorePackages.Workspace.Packages.ExpChatShared)
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagExpChatUseMessagesStore = SharedFlags.FFlagExpChatUseMessagesStore

local loader = require(script.Parent.inExpChatMessagesLoader)

local originalStore = ExpChatShared.context.store
local originalMessagesStore = ExpChatShared.context.messagesStore

local message = {
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

local byMessageId = {
	[message.messageId] = message,
}
local windowMessagesInOrder = { message.messageId }
local windowMessagesInOrderByTabId = {
	RBXGeneral = { message.messageId },
}

local function makeRoduxStore(messagesState)
	return {
		getState = function()
			return {
				Messages = messagesState,
				TextChannels = {
					allTextChannels = {},
				},
			}
		end,
	}
end

describe("inExpChatMessagesLoader", function()
	afterEach(function()
		ExpChatShared.context.store = originalStore
		ExpChatShared.context.messagesStore = originalMessagesStore
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
end)
