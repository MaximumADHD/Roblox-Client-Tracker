local ContactImporter = script.Parent.Parent
local devDependencies = require(ContactImporter.devDependencies)

local getUserIdsFromString = require(script.Parent.getUserIdsFromString)

local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it

describe("getUserIdsFromString", function()
	it("SHOULD return expected values", function()
		local usersString = "user1,user2,user3"
		local getMatches = getUserIdsFromString(usersString)
		local usersTable = {}
		for user in getMatches do
			table.insert(usersTable, user)
		end
		jestExpect(usersTable).toEqual({ "user1", "user2", "user3" })
	end)
end)
