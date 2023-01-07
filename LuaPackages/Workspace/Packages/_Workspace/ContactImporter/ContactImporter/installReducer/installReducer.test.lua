local ContactImporter = script:FindFirstAncestor("ContactImporter")
local devDependencies = require(ContactImporter.devDependencies)

local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local it = JestGlobals.it

local installReducer = require(script.Parent.installReducer)

it("SHOULD return function", function()
	jestExpect(installReducer).toEqual(jestExpect.any("function"))
end)
