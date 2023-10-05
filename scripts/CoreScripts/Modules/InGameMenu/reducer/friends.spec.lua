return function()
	local CorePackages = game:GetService("CorePackages")

	local InGameMenu = script.Parent.Parent
	local SetFriendStatus = require(InGameMenu.Actions.SetFriendStatus)
	local friends = require(script.Parent.friends)

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	it("should be empty by default", function()
		local defaultState = friends(nil, {})
		expect(defaultState).toEqual({})
	end)

	describe("SetFriendStatus", function()
		it("should correctly add the friend status", function()
			local oldState = friends(nil, {})
			local newState = friends(oldState, SetFriendStatus(261, Enum.FriendStatus.Friend))
			expect(oldState).never.toBe(newState)
			expect(newState).toEqual({ [261] = Enum.FriendStatus.Friend })
		end)

		it("should remove the friend status when nil is passed", function()
			local oldState = friends(nil, SetFriendStatus(261, Enum.FriendStatus.Friend))
			local newState = friends(oldState, SetFriendStatus(261, nil))
			expect(oldState).never.toBe(newState)
			expect(newState).toEqual({})
		end)
	end)
end
