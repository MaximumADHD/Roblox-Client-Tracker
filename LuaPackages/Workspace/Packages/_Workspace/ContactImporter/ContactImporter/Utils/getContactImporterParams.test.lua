local ContactImporter = script.Parent.Parent
local devDependencies = require(ContactImporter.devDependencies)

local getContactImporterParams = require(script.Parent.getContactImporterParams)

local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it

local RODUX_KEY = require(ContactImporter.Common.Constants).RODUX_KEY

describe("getContactImporterParams", function()
	it("SHOULD return an empty table by default", function()
		jestExpect(getContactImporterParams({})).toEqual({})
	end)

	it("SHOULD be able to handle missing fierlds default", function()
		jestExpect(getContactImporterParams({
			[RODUX_KEY] = {},
		})).toEqual({})
	end)

	it("SHOULD get any values from the relevant place an empty table by default", function()
		jestExpect(getContactImporterParams({
			[RODUX_KEY] = {
				ShowContactImporterParams = {
					a = "111",
				},
			},
		})).toEqual({ a = "111" })
	end)
end)
