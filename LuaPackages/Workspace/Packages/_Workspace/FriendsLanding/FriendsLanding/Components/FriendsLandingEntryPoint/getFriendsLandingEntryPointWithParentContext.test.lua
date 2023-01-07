local FriendsLanding = script:FindFirstAncestor("FriendsLanding")

local devDependencies = require(FriendsLanding.devDependencies)

local JestGlobals = devDependencies.JestGlobals
local expect = JestGlobals.expect
local it = JestGlobals.it

local getFriendsLandingEntryPointWithParentContext = require(script.Parent.getFriendsLandingEntryPointWithParentContext)

it("SHOULD return a function", function()
	expect(getFriendsLandingEntryPointWithParentContext).toEqual(expect.any("function"))
end)
