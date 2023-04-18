local ContactImporter = script:FindFirstAncestor("ContactImporter")
local devDependencies = require(ContactImporter.devDependencies)

local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it

local mapDispatchToProps = require(script.Parent.mapDispatchToProps)

it("SHOULD return a function", function()
	jestExpect(mapDispatchToProps).toEqual(jestExpect.any("function"))
end)

describe("WHEN called", function()
	it("SHOULD return a dictionary without throwing", function()
		jestExpect(mapDispatchToProps(nil)).toEqual(jestExpect.any("table"))
	end)

	it("SHOULD have expected fields", function()
		local dispatchFields = mapDispatchToProps(nil)

		jestExpect(dispatchFields).toEqual({
			updateUserSettings = jestExpect.any("function"),
			hideContactImporterModal = jestExpect.any("function"),
			getUserSettingsMetadata = jestExpect.any("function"),
		})
	end)
end)
