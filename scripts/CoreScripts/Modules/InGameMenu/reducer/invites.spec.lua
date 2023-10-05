return function()
	local CorePackages = game:GetService("CorePackages")

	local InGameMenu = script.Parent.Parent
	local ReceivedUserInviteStatus = require(InGameMenu.Actions.ReceivedUserInviteStatus)
	local invites = require(script.Parent.invites)

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local Constants = require(InGameMenu.Resources.Constants)
	local InviteStatus = Constants.InviteStatus

	it("should be empty by default", function()
		local defaultState = invites(nil, {})
		expect(defaultState).toEqual({})
	end)

	describe("ReceivedUserInviteStatus", function()
		it("should correctly add the invite status", function()
			local oldState = invites(nil, {})
			local newState = invites(oldState, ReceivedUserInviteStatus(261, InviteStatus.Pending))
			expect(oldState).never.toBe(newState)
			expect(newState).toEqual({ ["261"] = InviteStatus.Pending })
		end)
	end)
end
