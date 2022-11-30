local SocialTab = script:FindFirstAncestor("SocialTab")
local GetUnreadConversationCount = require(SocialTab.Conversations.NetworkRequests.GetUnreadConversationCount)

local devDependencies = require(SocialTab.devDependencies)
local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local reducer = require(script.Parent.UnreadConversationCount)

describe("GIVEN GetUnreadConversationCount", function()
	local unreadCount = 10
	local responseBody = {
		count = unreadCount,
	}

	describe("WHEN reduced", function()
		it("SHOULD return the given unreadCount", function()
			local reducedResult = reducer(nil, {
				type = GetUnreadConversationCount.Succeeded.name,
				responseBody = responseBody,
			})
			expect(reducedResult).toBe(unreadCount)
		end)
	end)

	describe("WHEN legacy reduced", function()
		it("SHOULD return the given unreadCount", function()
			local reducedResult = reducer(nil, {
				type = "SetUnreadConversationCount",
				count = 6,
			})
			expect(reducedResult).toBe(6)
		end)
	end)
end)
