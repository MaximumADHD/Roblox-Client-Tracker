local CorePackages = game:GetService("CorePackages")
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local expect = JestGlobals.expect
local describe = JestGlobals.describe
local it = JestGlobals.it

local shouldShowFriendJoinedPlayerToast = require(script.Parent.shouldShowFriendJoinedPlayerToast)

local function makePlayer(joinData)
	return {
		GetJoinData = function()
			return joinData
		end,
	} :: any
end

describe("shouldShowFriendJoinedPlayerToast", function()
	it("returns false when the join has a referrer", function()
		expect(shouldShowFriendJoinedPlayerToast(makePlayer({
			ReferredByPlayerId = "123",
		}))).toBe(false)
	end)

	it("returns true when the join does not have a referrer", function()
		expect(shouldShowFriendJoinedPlayerToast(makePlayer({}))).toBe(true)
	end)

	it("returns true when the referrer is zero", function()
		expect(shouldShowFriendJoinedPlayerToast(makePlayer({
			ReferredByPlayerId = 0,
		}))).toBe(true)
	end)
end)
