return function()
	local CoreGui = game:GetService("CoreGui")
	local Modules = CoreGui.RobloxGui.Modules
	local LuaChat = Modules.LuaChat
	local SetConnectionState = require(LuaChat.Actions.SetConnectionState)
	local ConnectionStateReducer = require(script.Parent.ConnectionState)

	it("should default to Connected", function()
		local state = ConnectionStateReducer(nil, {})

		expect(state).to.equal(Enum.ConnectionState.Connected)
	end)

	it("should update the ConnectionState", function()
		local state = ConnectionStateReducer(nil, {})

		state = ConnectionStateReducer(state, SetConnectionState(Enum.ConnectionState.Disconnected))

		expect(state).to.equal(Enum.ConnectionState.Disconnected)
	end)
end