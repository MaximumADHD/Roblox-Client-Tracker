local ContactImporter = script:FindFirstAncestor("ContactImporter")
local devDependencies = require(ContactImporter.devDependencies)

local decorateMatchedContact = require(script.Parent.decorateMatchedContact)

local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it

describe("decorateMatchedContact", function()
	describe("Default state", function()
		it("SHOULD return a function", function()
			jestExpect(decorateMatchedContact).toEqual(jestExpect.any("function"))
		end)
	end)

	describe("sort contacts", function()
		it("SHOULD work with contacts", function()
			local state = {
				hasSentRequest = {},
			}

			local expectedState = {
				{
					contactId = "123",
					contactName = "zuko",
					isMatchedContact = true,
				},
				{
					contactId = "456",
					contactName = "oppa",
					isMatchedContact = true,
				},
			}

			jestExpect(decorateMatchedContact({
				{ contactId = "123", contactName = "zuko" },
				{ contactId = "456", contactName = "oppa" },
			}, state)).toEqual(expectedState)
		end)

		it("SHOULD match up any sentRequestData", function()
			local state = {
				hasSentRequest = {
					["123"] = true,
					["1gbv-1f8gs-34ghsa"] = true,
					["9g2df-5h74-v57das"] = false,
				},
			}

			local expectedState = {
				{
					contactId = "456",
					contactName = "zuko",
					isMatchedContact = true,
				},
				{
					contactId = "123",
					contactName = "oppa",
					isMatchedContact = true,
					hasSentRequest = true,
				},
			}

			local sortedContacts = decorateMatchedContact({
				{ contactId = "456", contactName = "zuko" },
				{ contactId = "123", contactName = "oppa" },
			}, state)

			jestExpect(sortedContacts).toEqual(expectedState)
		end)

		it("SHOULD return an empty table if the store is empty", function()
			local state = {}
			local expectedState = {}
			local sortedContacts = decorateMatchedContact({}, state)

			jestExpect(sortedContacts).toEqual(expectedState)
		end)
	end)
end)
