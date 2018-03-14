return function()
	local CoreGui = game:GetService("CoreGui")
	local Modules = CoreGui.RobloxGui.Modules
	local LuaChat = Modules.LuaChat
	local SetAppLoaded = require(LuaChat.Actions.SetAppLoaded)
	local AppLoaded = require(script.Parent.AppLoaded)
	describe("Action AppLoaded", function()
		it("should be unloaded by default", function()
			local state = AppLoaded(nil, {})

			expect(state).to.equal(false)
		end)

		it("should be changed using SetAppLoaded", function()
			local state = AppLoaded(nil, {})

			state = AppLoaded(state, SetAppLoaded(false))

			expect(state).to.equal(false)

			state = AppLoaded(state, SetAppLoaded(true))

			expect(state).to.equal(true)
		end)
	end)
end