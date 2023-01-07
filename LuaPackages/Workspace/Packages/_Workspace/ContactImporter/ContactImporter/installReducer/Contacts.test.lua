local ContactImporter = script:FindFirstAncestor("ContactImporter")
local devDependencies = require(ContactImporter.devDependencies)

local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local it = JestGlobals.it

local reducer = require(script.Parent.Contacts)

it("SHOULD return function", function()
	jestExpect(reducer).toEqual(jestExpect.any("function"))
end)

it("SHOULD return table", function()
	local result = reducer(nil, { type = "Action" })
	jestExpect(result).toEqual(jestExpect.any("table"))
end)
