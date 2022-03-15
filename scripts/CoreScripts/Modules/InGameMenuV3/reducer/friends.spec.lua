return function()
	local InGameMenu = script.Parent.Parent
	local SetFriendStatus = require(InGameMenu.Actions.SetFriendStatus)
	local friends = require(script.Parent.friends)

	local function countKeys(t)
		local count = 0
		for _ in pairs(t) do
			count = count + 1
		end
		return count
	end

	it("should be empty by default", function()
		local defaultState = friends(nil, {})
		expect(type(defaultState)).to.equal("table")
		expect(countKeys(defaultState)).to.equal(0)
	end)

	describe("SetFriendStatus", function()
		it("should correctly add the friend status", function()
			local oldState = friends(nil, {})
			local newState = friends(oldState, SetFriendStatus(261, Enum.FriendStatus.Friend))
			expect(oldState).to.never.equal(newState)
			expect(countKeys(newState)).to.equal(1)
			expect(newState[261]).to.equal(Enum.FriendStatus.Friend)
		end)

		it("should remove the friend status when nil is passed", function()
			local oldState = friends(nil, SetFriendStatus(261, Enum.FriendStatus.Friend))
			local newState = friends(oldState, SetFriendStatus(261, nil))
			expect(oldState).to.never.equal(newState)
			expect(countKeys(newState)).to.equal(0)
		end)
	end)
end