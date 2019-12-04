return function()
	local InGameMenu = script.Parent.Parent
	local ReceivedUserInviteStatus = require(InGameMenu.Actions.ReceivedUserInviteStatus)
	local invites = require(script.Parent.invites)

	local Constants = require(InGameMenu.Resources.Constants)
	local InviteStatus = Constants.InviteStatus

	local function countKeys(t)
		local count = 0
		for _ in pairs(t) do
			count = count + 1
		end
		return count
	end

	it("should be empty by default", function()
		local defaultState = invites(nil, {})
		expect(type(defaultState)).to.equal("table")
		expect(countKeys(defaultState)).to.equal(0)
	end)

	describe("ReceivedUserInviteStatus", function()
		it("should correctly add the invite status", function()
			local oldState = invites(nil, {})
			local newState = invites(oldState, ReceivedUserInviteStatus(261, InviteStatus.Pending))
			expect(oldState).to.never.equal(newState)
			expect(countKeys(newState)).to.equal(1)
			expect(newState["261"]).to.equal(InviteStatus.Pending)
		end)
	end)
end