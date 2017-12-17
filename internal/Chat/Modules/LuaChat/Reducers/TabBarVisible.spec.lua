return function()
	local LuaChat = script.Parent.Parent
	local TabBarVisible = require(script.Parent.TabBarVisible)
	local ActionType = require(LuaChat.ActionType)

	describe("Action TabBarVisible", function()
		it("sets the TabBarVisible flag", function()
			local state = TabBarVisible(nil, {})

			expect(state).to.equal(true)

			state = TabBarVisible(state, {
				type = ActionType.SetTabBarVisible,
				value = false,
			})

			expect(state).to.equal(false)

			state = TabBarVisible(state, {
				type = ActionType.SetTabBarVisible,
				value = true,
			})

			expect(state).to.equal(true)
		end)
	end)
end