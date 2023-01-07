local FriendsLanding = script:FindFirstAncestor("FriendsLanding")

local devDependencies = require(FriendsLanding.devDependencies)

local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local getUserAvatarImage = require(script.Parent.getUserAvatarImage)

describe("getUserAvatarImage", function()
	it("SHOULD return the avatar image with the users id included", function()
		expect(getUserAvatarImage(1)).toBe("rbxthumb://type=Avatar&id=1&w=352&h=352")
	end)
end)
