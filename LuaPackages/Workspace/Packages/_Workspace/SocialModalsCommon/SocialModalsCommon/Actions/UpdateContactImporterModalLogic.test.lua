local SocialModalsCommon = script:FindFirstAncestor("SocialModalsCommon")
local Packages = SocialModalsCommon.Parent

local UpdateContactImporterModalLogic = require(script.Parent.UpdateContactImporterModalLogic)

local JestGlobals = require(Packages.Dev.JestGlobals)
local jestExpect = JestGlobals.expect
local it = JestGlobals.it

it("should assert if given a non-table for params", function()
	jestExpect(function()
		UpdateContactImporterModalLogic({})
	end).never.toThrow()

	jestExpect(function()
		UpdateContactImporterModalLogic(0)
	end).toThrow()

	jestExpect(function()
		UpdateContactImporterModalLogic(nil)
	end).toThrow()

	jestExpect(function()
		UpdateContactImporterModalLogic(false)
	end).toThrow()

	jestExpect(function()
		UpdateContactImporterModalLogic(function() end)
	end).toThrow()
end)
