local GraphQLServer = script:FindFirstAncestor("GraphQLServer")
local Packages = GraphQLServer.Parent

local JestGlobals = require(Packages.Dev.JestGlobals)
local expect = JestGlobals.expect

local UserProfileResolver = require(script.Parent.UserProfileResolver)

return function()
	describe("UserProfileResolver", function()
		it("SHOULD have expected fields", function()
			expect(UserProfileResolver).toEqual({
				Query = {
					userProfiles = expect.any("function"),
				},
				UserProfile = {
					displayName = expect.any("function"),
					id = expect.any("function"),
				},
			})
		end)

		it("SHOULD format userId", function()
			expect(UserProfileResolver.UserProfile.id({ userId = 1234 })).toBe("1234")
		end)
	end)
end
