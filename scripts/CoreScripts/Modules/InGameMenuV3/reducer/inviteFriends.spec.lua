return function()
	local InGameMenu = script.Parent.Parent
	local SetFriends = require(InGameMenu.Actions.SetFriends)
	local inviteFriends = require(script.Parent.inviteFriends)
	local GetFFlagFixV3InviteReducer = require(InGameMenu.Flags.GetFFlagFixV3InviteReducer)

	local function countKeys(t)
		local count = 0
		for _ in pairs(t) do
			count = count + 1
		end
		return count
	end

	it("should be empty by default", function()
		local defaultState = inviteFriends(nil, {})
		expect(type(defaultState)).to.equal("table")
		if GetFFlagFixV3InviteReducer() then
			expect(countKeys(defaultState)).to.equal(1)
			expect(countKeys(defaultState.inviteFriends)).to.equal(0)
		else
			expect(countKeys(defaultState)).to.equal(0)
		end
	end)

	describe("SetFriends", function()
		it("should add friends", function()
			local oldState = inviteFriends(nil, {})
			local newState = inviteFriends(
				oldState,
				SetFriends({
					{
						Id = 1234,
						IsOnline = true,
						Username = "a",
						Displayname = "a",
					},
					{
						Id = 1235,
						IsOnline = true,
						Username = "b",
						Displayname = "b",
					},
					{
						Id = 1238,
						IsOnline = false,
						Username = "c",
						Displayname = "c",
					},
				})
			)
			expect(countKeys(newState.inviteFriends)).to.equal(3)
		end)
	end)
end
