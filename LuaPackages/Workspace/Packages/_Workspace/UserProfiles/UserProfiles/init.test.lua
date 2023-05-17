local UserProfiles = script:FindFirstAncestor("UserProfiles")
local Packages = UserProfiles.Parent
local UserProfilesModule = require(UserProfiles)

local JestGlobals = require(Packages.Dev.JestGlobals)
local expect = JestGlobals.expect
local it = JestGlobals.it

it("SHOULD have expected API", function()
	expect(UserProfilesModule).toEqual({
		["jest.config"] = expect.anything(),
		Hooks = {
			useUserProfilesFetch = expect.any("function"),
		},
		Queries = {
			userProfilesCombinedNameByUserIds = expect.any("table"),
			userProfilesCombinedNameAndUsernameByUserIds = expect.any("table"),
			userProfilesAllNamesByUserIds = expect.any("table"),
		},
		Formatters = {
			formatUsername = expect.any("function"),
		},
	})
end)
