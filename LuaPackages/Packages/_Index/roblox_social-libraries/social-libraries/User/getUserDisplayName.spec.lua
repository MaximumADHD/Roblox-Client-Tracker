return function()
	local SocialLibraries = script:FindFirstAncestor("social-libraries")
	local Packages = SocialLibraries.Parent
	local JestGlobals = require(Packages.Dev.JestGlobals)
	local jestExpect = JestGlobals.expect
	local getUserDisplayName = require(script.Parent.getUserDisplayName)

	describe("GIVEN a user model with no displayname and state", function()
		local user = {
			name = "nameHere",
			displayName = nil,
		}
		local state = {}

		it("SHOULD return the user's name as a string", function()
			local result = getUserDisplayName(state, user)

			jestExpect(result).toBe("nameHere")
		end)
	end)

	describe("GIVEN a user model with a name an a display name and state", function()
		local user = {
			name = "nameHere",
			displayName = "displayNameHere",
		}
		local state = {}

		it("SHOULD return the user's displayName as a string", function()
			local result = getUserDisplayName(state, user)

			jestExpect(result).toBe("displayNameHere")
		end)
	end)
end
