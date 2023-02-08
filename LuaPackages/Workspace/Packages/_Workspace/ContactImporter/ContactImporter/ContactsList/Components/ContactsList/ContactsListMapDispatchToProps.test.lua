local ContactImporter = script:FindFirstAncestor("ContactImporter")
local devDependencies = require(ContactImporter.devDependencies)

local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it

local mapDispatchToProps = require(script.Parent.ContactsListMapDispatchToProps)

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
			requestFriendship = jestExpect.any("function"),
			findContacts = jestExpect.any("function"),
			getContactEntities = jestExpect.any("function"),
			uploadContacts = jestExpect.any("function"),
			updateUserSettings = jestExpect.any("function"),
		})
	end)
end)
