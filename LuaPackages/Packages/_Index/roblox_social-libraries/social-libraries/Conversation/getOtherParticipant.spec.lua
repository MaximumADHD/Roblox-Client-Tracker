return function()
	local SocialLibraries = script:FindFirstAncestor("social-libraries")
	local Packages = SocialLibraries.Parent
	local JestGlobals = require(Packages.Dev.JestGlobals)
	local jestExpect = JestGlobals.expect
	local getOtherParticipant = require(script.Parent.getOtherParticipant)

	describe("GIVEN a state and array of users", function()
		local state = {
			LocalUserId = "me",
		}
		it("SHOULD return the other userId", function()
			local result = getOtherParticipant(state, { "me", "you" })
			jestExpect(result).toBe("you")
		end)

		it("SHOULD return nil if no other users are in the array", function()
			local result = getOtherParticipant(state, { "me" })
			jestExpect(result).toBe(nil)
		end)
	end)
end
