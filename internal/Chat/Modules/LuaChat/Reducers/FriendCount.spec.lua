return function()
	local LuaChat = script.Parent.Parent
	local FriendCount = require(script.Parent.FriendCount)
	local ActionType = require(LuaChat.ActionType)

	it("should be zero by default", function()
		local state = FriendCount(nil, {})

		expect(state).to.equal(0)
	end)

	it("should respond to SetFriendCount", function()
		local state = FriendCount(nil, {})
		state = FriendCount(state, {
			type = ActionType.SetFriendCount,
			count = 520,
		})

		expect(state).to.equal(520)
	end)
end