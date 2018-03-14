return function()
	local CoreGui = game:GetService("CoreGui")
	local Modules = CoreGui.RobloxGui.Modules
	local LuaChat = Modules.LuaChat
	local SetChatEnabled = require(LuaChat.Actions.SetChatEnabled)

	local ChatEnabled = require(script.Parent.ChatEnabled)

	it("should be enabled by default", function()
		local state = ChatEnabled(nil, {})

		expect(state).to.equal(true)
	end)

	it("should be changed using SetChatEnabled", function()
		local state = ChatEnabled(nil, {})

		state = ChatEnabled(state, SetChatEnabled(false))

		expect(state).to.equal(false)

		state = ChatEnabled(state, SetChatEnabled(true))

		expect(state).to.equal(true)
	end)
end