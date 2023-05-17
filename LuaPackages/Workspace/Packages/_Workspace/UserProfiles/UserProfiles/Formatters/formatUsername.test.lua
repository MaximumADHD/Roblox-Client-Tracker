local UserProfiles = script:FindFirstAncestor("UserProfiles")
local Packages = UserProfiles.Parent

local JestGlobals = require(Packages.Dev.JestGlobals)
local expect = JestGlobals.expect
local it = JestGlobals.it
local formatUsername = require(script.Parent.formatUsername)

it("SHOULD add an @ to the start of username", function()
	expect(formatUsername("morningInLA")).toBe("@morningInLA")
end)
