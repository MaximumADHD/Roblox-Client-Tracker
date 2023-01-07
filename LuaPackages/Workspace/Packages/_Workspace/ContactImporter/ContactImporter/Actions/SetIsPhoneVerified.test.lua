local ContactImporter = script:FindFirstAncestor("ContactImporter")
local devDependencies = require(ContactImporter.devDependencies)

local SetIsPhoneVerified = require(script.Parent.SetIsPhoneVerified)

local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local it = JestGlobals.it

it("should assert if given a non-table for params", function()
	jestExpect(function()
		SetIsPhoneVerified({})
	end).never.toThrow()

	jestExpect(function()
		SetIsPhoneVerified(0)
	end).toThrow()

	jestExpect(function()
		SetIsPhoneVerified(nil)
	end).toThrow()

	jestExpect(function()
		SetIsPhoneVerified(false)
	end).toThrow()

	jestExpect(function()
		SetIsPhoneVerified(function() end)
	end).toThrow()
end)
