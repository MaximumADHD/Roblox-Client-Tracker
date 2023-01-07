local ContactImporter = script:FindFirstAncestor("ContactImporter")
local devDependencies = require(ContactImporter.devDependencies)
local SetContactImporterDisplayLogic = require(script.Parent.SetContactImporterDisplayLogic)

local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local it = JestGlobals.it

it("should assert if given a non-table for params", function()
	jestExpect(function()
		SetContactImporterDisplayLogic({})
	end).never.toThrow()

	jestExpect(function()
		SetContactImporterDisplayLogic(0)
	end).toThrow()

	jestExpect(function()
		SetContactImporterDisplayLogic(nil)
	end).toThrow()

	jestExpect(function()
		SetContactImporterDisplayLogic(false)
	end).toThrow()

	jestExpect(function()
		SetContactImporterDisplayLogic(function() end)
	end).toThrow()
end)
