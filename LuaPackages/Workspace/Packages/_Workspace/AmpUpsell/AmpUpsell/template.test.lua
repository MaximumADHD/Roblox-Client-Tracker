local Root = script.Parent
local Packages = Root.Parent

local JestGlobals = require(Packages.Dev.JestGlobals)
local expect = JestGlobals.expect
local it = JestGlobals.it

it("should be true", function()
	expect(true).toBe(true)
end)
