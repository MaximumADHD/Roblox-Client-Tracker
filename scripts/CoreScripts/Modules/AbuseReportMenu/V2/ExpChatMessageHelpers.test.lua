local Players = game:GetService("Players")

local CorePackages = game:GetService("CorePackages")

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local ExpChatMessageHelpers = require(script.Parent.ExpChatMessageHelpers)

local function makeMessage(overrides: { [string]: any }): { [string]: any }
	local message = {
		messageId = "msg-1",
		userId = "12345",
		prefixText = "",
		text = "hello",
		textChannel = nil,
		textChatMessageInstance = nil,
	}
	for key, value in overrides do
		message[key] = value
	end
	return message
end

describe("ExpChatMessageHelpers.getMessageUsername", function()
	it("should resolve username from an in-session player", function()
		local localPlayer = Players.LocalPlayer
		if not localPlayer then
			return
		end

		local message = makeMessage({
			userId = tostring(localPlayer.UserId),
			prefixText = "OtherName:",
		})

		expect(ExpChatMessageHelpers.getMessageUsername(message)).toEqual(localPlayer.Name)
	end)

	it("should resolve username from TextSource when instance is present", function()
		local message = makeMessage({
			userId = "999999999",
			prefixText = "WaffleSniper47:",
			textChatMessageInstance = {
				TextSource = {
					Username = "TextSourceUser",
				},
			},
		})

		expect(ExpChatMessageHelpers.getMessageUsername(message)).toEqual("TextSourceUser")
	end)

	it("should return nil when sync resolution fails", function()
		local message = makeMessage({
			userId = "999999999",
			prefixText = "WaffleSniper47:",
			textChatMessageInstance = nil,
		})

		expect(ExpChatMessageHelpers.getMessageUsername(message)).toBeNil()
	end)
end)

describe("ExpChatMessageHelpers.collectItems", function()
	it("should include meta.username from TextSource on selectable items", function()
		local message = makeMessage({
			messageId = "8693054111-{cbc4f4f7-39d3-433f-864a-1e66f4dee7c8}",
			userId = "8693054111",
			text = "welcome!",
			textChatMessageInstance = {
				TextSource = {
					Username = "WaffleSniper47",
				},
			},
		})
		local byMessageId = {
			[message.messageId] = message,
		}

		local items = ExpChatMessageHelpers.collectItems(byMessageId, { message.messageId })

		expect(#items).toEqual(1)
		expect(items[1].meta.userId).toEqual("8693054111")
		expect(items[1].meta.username).toEqual("WaffleSniper47")
	end)

	it("should leave meta.username nil when sync resolution fails", function()
		local message = makeMessage({
			messageId = "offline-user-msg",
			userId = "999999999",
			prefixText = "WaffleSniper47:",
		})
		local byMessageId = {
			[message.messageId] = message,
		}

		local items = ExpChatMessageHelpers.collectItems(byMessageId, { message.messageId })

		expect(#items).toEqual(1)
		expect(items[1].meta.username).toBeNil()
	end)

	it("should skip system messages", function()
		local message = makeMessage({
			messageId = "system-msg",
			userId = "0",
			prefixText = "",
		})
		local byMessageId = {
			[message.messageId] = message,
		}

		local items = ExpChatMessageHelpers.collectItems(byMessageId, { message.messageId })

		expect(#items).toEqual(0)
	end)
end)
