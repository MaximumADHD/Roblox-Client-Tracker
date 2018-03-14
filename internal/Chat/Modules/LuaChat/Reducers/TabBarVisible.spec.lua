return function()
	local LuaChat = script.Parent.Parent
	local TabBarVisible = require(script.Parent.TabBarVisible)
	local SetTabBarVisible = require(LuaChat.Actions.SetTabBarVisible)

	describe("Action TabBarVisible", function()
		it("sets the TabBarVisible flag", function()
			local state = TabBarVisible(nil, {})

			expect(state).to.equal(true)

			state = TabBarVisible(state, SetTabBarVisible(false))

			expect(state).to.equal(false)

			state = TabBarVisible(state, SetTabBarVisible(true))

			expect(state).to.equal(true)
		end)
	end)
end