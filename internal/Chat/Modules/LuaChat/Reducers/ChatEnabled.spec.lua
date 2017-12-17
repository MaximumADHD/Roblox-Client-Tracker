return function()
	local ChatEnabled = require(script.Parent.ChatEnabled)

	local LuaChat = script.Parent.Parent
	local ActionType = require(LuaChat.ActionType)

	it("should be enabled by default", function()
		local state = ChatEnabled(nil, {})

		expect(state).to.equal(true)
	end)

	it("should be changed using SetChatEnabled", function()
		local state = ChatEnabled(nil, {})

		state = ChatEnabled(state, {
			type = ActionType.SetChatEnabled,
			value = false
		})

		expect(state).to.equal(false)

		state = ChatEnabled(state, {
			type = ActionType.SetChatEnabled,
			value = true
		})

		expect(state).to.equal(true)
	end)
end