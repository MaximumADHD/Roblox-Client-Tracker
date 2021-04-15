return function()
	local CorePackages = game:GetService("CorePackages")
	local FriendPresenceCounts = require(CorePackages.AppTempCommon.LuaChat.Reducers.FriendPresenceCounts)
	local UpdateFriendPresenceCounts = require(CorePackages.AppTempCommon.LuaChat.Actions.UpdateFriendPresenceCounts)

	it("should be no entries by default", function()
		local state = FriendPresenceCounts(nil, {})

		local nextKey, _ = next(state)
		expect(nextKey).to.never.be.ok()
	end)

	it("should respond to UpdateFriendPresenceCounts", function()
		local state = FriendPresenceCounts(nil, {})
		state = FriendPresenceCounts(state, UpdateFriendPresenceCounts({
			["OFFLINE"] = 2,
			["ONLINE"] = 5,
			["IN_GAME"] = 3,
			["IN_STUDIO"] = 0,
		}))

		expect(state["OFFLINE"]).to.equal(2)
		expect(state["ONLINE"]).to.equal(5)
		expect(state["IN_GAME"]).to.equal(3)
		expect(state["IN_STUDIO"]).to.equal(0)
	end)
end