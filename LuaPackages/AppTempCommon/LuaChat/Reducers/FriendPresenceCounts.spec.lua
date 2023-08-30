--!nonstrict
return function()
	local CorePackages = game:GetService("CorePackages")

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect
	local FriendPresenceCounts = require(CorePackages.AppTempCommon.LuaChat.Reducers.FriendPresenceCounts)
	local UpdateFriendPresenceCounts = require(CorePackages.AppTempCommon.LuaChat.Actions.UpdateFriendPresenceCounts)

	it("should be no entries by default", function()
		local state = FriendPresenceCounts(nil, {})

		local nextKey, _ = next(state)
		expect(nextKey).never.toBeDefined()
	end)

	it("should respond to UpdateFriendPresenceCounts", function()
		local state = FriendPresenceCounts(nil, {})
		state = FriendPresenceCounts(state, UpdateFriendPresenceCounts({
			["OFFLINE"] = 2,
			["ONLINE"] = 5,
			["IN_GAME"] = 3,
			["IN_STUDIO"] = 0,
		}))

		expect(state["OFFLINE"]).toBe(2)
		expect(state["ONLINE"]).toBe(5)
		expect(state["IN_GAME"]).toBe(3)
		expect(state["IN_STUDIO"]).toBe(0)
	end)
end
