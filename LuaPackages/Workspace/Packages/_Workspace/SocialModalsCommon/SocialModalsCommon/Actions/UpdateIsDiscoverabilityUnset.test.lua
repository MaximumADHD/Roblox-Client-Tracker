local SocialModalsCommon = script:FindFirstAncestor("SocialModalsCommon")
local Packages = SocialModalsCommon.Parent

local UpdateIsDiscoverabilityUnset = require(script.Parent.UpdateIsDiscoverabilityUnset)

local JestGlobals = require(Packages.Dev.JestGlobals)
local jestExpect = JestGlobals.expect
local it = JestGlobals.it

it("should assert if given a non-table for params", function()
	jestExpect(function()
		UpdateIsDiscoverabilityUnset({})
	end).never.toThrow()

	jestExpect(function()
		UpdateIsDiscoverabilityUnset(0)
	end).toThrow()

	jestExpect(function()
		UpdateIsDiscoverabilityUnset(nil)
	end).toThrow()

	jestExpect(function()
		UpdateIsDiscoverabilityUnset(false)
	end).toThrow()

	jestExpect(function()
		UpdateIsDiscoverabilityUnset(function() end)
	end).toThrow()
end)
