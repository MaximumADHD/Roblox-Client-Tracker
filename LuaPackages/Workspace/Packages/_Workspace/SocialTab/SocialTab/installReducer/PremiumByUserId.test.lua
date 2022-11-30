local SocialTab = script:FindFirstAncestor("SocialTab")

local devDependencies = require(SocialTab.devDependencies)
local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local reducer = require(script.Parent.PremiumByUserId)

describe("GIVEN userId1", function()
	local actionName = "SetUserMembershipType"

	local userId1 = "userId1"

	describe("WHEN the reducer is called with MembershipType.None", function()
		local state = reducer({}, {
			type = actionName,
			userId = userId1,
			membershipType = Enum.MembershipType.None,
		})

		it("SHOULD set the membership type to false", function()
			expect(state[userId1]).toBe(false)
		end)

		describe("WHEN reducer is called with the same user as MembershipType.Premium", function()
			local stateWithSameUser = reducer(state, {
				type = actionName,
				userId = userId1,
				membershipType = Enum.MembershipType.Premium,
			})

			it("SHOULD set the membership type", function()
				expect(stateWithSameUser[userId1]).toBe(true)
			end)
		end)

		describe("WHEN reducer is called with a different user", function()
			local userId2 = "userId2"
			local stateWithDifferentUser = reducer(state, {
				type = actionName,
				userId = userId2,
				membershipType = Enum.MembershipType.Premium,
			})

			it("SHOULD set the membership type", function()
				expect(stateWithDifferentUser[userId2]).toBe(true)
			end)
		end)
	end)
end)
