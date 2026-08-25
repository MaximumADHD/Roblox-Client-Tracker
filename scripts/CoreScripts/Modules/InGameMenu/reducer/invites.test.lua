local CorePackages = game:GetService("CorePackages")

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect

local InGameMenu = script.Parent.Parent
local ReceivedUserInviteStatus = require(InGameMenu.Actions.ReceivedUserInviteStatus)
local invites = require(script.Parent.invites)

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
