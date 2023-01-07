local ContactImporter = script:FindFirstAncestor("ContactImporter")
local devDependencies = require(ContactImporter.devDependencies)

local getDeviceContacts = require(script.Parent.getDeviceContacts)

local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it

describe("getDeviceContacts", function()
	describe("Default state", function()
		it("SHOULD return a function", function()
			jestExpect(getDeviceContacts).toEqual(jestExpect.any("function"))
		end)
	end)

	describe("sort contacts", function()
		it("SHOULD work with contacts", function()
			local state = {
				byDeviceContactId = {
					["9fjf4-3mnd9-1j9df"] = {
						contactName = "Leia Organa",
						id = "9fjf4-3mnd9-1j9df",
						phoneNumbers = { 123456, 67890 },
					},
					["45gsd-545df-51fgh"] = {
						contactName = "Jake Long",
						id = "45gsd-545df-51fgh",
						phoneNumbers = { 9999, 67890 },
					},
					["1gbv-1f8gs-34ghsa"] = {
						contactName = "Bob Smith",
						id = "1gbv-1f8gs-34ghsa",
						phoneNumbers = { 8888, 67890 },
					},
					["9g2df-5h74-v57das"] = {
						contactName = "Kate Murphy",
						id = "9g2df-5h74-v57das",
						phoneNumbers = { 67890, 1234 },
					},
				},
			}

			local expectedState = {
				{
					deviceContactId = "1gbv-1f8gs-34ghsa",
					contactName = "Bob Smith",
					phoneNumber = "8888",
					isMatchedContact = false,
				},
				{
					deviceContactId = "45gsd-545df-51fgh",
					contactName = "Jake Long",
					phoneNumber = "9999",
					isMatchedContact = false,
				},
				{
					deviceContactId = "9g2df-5h74-v57das",
					contactName = "Kate Murphy",
					phoneNumber = "67890",
					isMatchedContact = false,
				},
				{
					deviceContactId = "9fjf4-3mnd9-1j9df",
					contactName = "Leia Organa",
					phoneNumber = "123456",
					isMatchedContact = false,
				},
			}
			local sortedContacts = getDeviceContacts(state)

			jestExpect(sortedContacts).toEqual(expectedState)
		end)

		it("SHOULD work with same name contacts", function()
			local state = {
				byDeviceContactId = {
					["9fjf4-3mnd9-1j9df"] = {
						contactName = "Bob Smith",
						id = "9fjf4-3mnd9-1j9df",
						phoneNumbers = { 123456, 67890 },
					},
					["45gsd-545df-51fgh"] = {
						contactName = "Jake Long",
						id = "45gsd-545df-51fgh",
						phoneNumbers = { 9999, 67890 },
					},
					["1gbv-1f8gs-34ghsa"] = {
						contactName = "Bob Smith",
						id = "1gbv-1f8gs-34ghsa",
						phoneNumbers = { 8888, 67890 },
					},
					["9g2df-5h74-v57das"] = {
						contactName = "Kate Murphy",
						id = "9g2df-5h74-v57das",
						phoneNumbers = { 6666, 67890 },
					},
				},
			}

			local expectedState = {
				{
					deviceContactId = "1gbv-1f8gs-34ghsa",
					contactName = "Bob Smith",
					phoneNumber = "8888",
					isMatchedContact = false,
				},
				{
					deviceContactId = "9fjf4-3mnd9-1j9df",
					contactName = "Bob Smith",
					phoneNumber = "123456",
					isMatchedContact = false,
				},
				{
					deviceContactId = "45gsd-545df-51fgh",
					contactName = "Jake Long",
					phoneNumber = "9999",
					isMatchedContact = false,
				},
				{
					deviceContactId = "9g2df-5h74-v57das",
					contactName = "Kate Murphy",
					phoneNumber = "6666",
					isMatchedContact = false,
				},
			}
			local sortedContacts = getDeviceContacts(state)

			jestExpect(sortedContacts).toEqual(expectedState)
		end)

		it("SHOULD match up any sentRequestData", function()
			local state = {
				byDeviceContactId = {
					["9fjf4-3mnd9-1j9df"] = {
						contactName = "Bob Smith",
						id = "9fjf4-3mnd9-1j9df",
						phoneNumbers = { 8888, 67890 },
					},
					["45gsd-545df-51fgh"] = {
						contactName = "Jake Long",
						id = "45gsd-545df-51fgh",
						phoneNumbers = { 8888, 67890 },
					},
					["1gbv-1f8gs-34ghsa"] = {
						contactName = "Bob Smith",
						id = "1gbv-1f8gs-34ghsa",
						phoneNumbers = { 8888, 67890 },
					},
					["9g2df-5h74-v57das"] = {
						contactName = "Kate Murphy",
						id = "9g2df-5h74-v57das",
						phoneNumbers = { 8888, 67890 },
					},
				},
				hasSentRequest = {
					["45gsd-545df-51fgh"] = true,
					["1gbv-1f8gs-34ghsa"] = true,
					["9g2df-5h74-v57das"] = false,
				},
			}

			local expectedState = {
				{
					deviceContactId = "1gbv-1f8gs-34ghsa",
					contactName = "Bob Smith",
					hasSentRequest = true,
					phoneNumber = "8888",
					isMatchedContact = false,
				} :: any,
				{
					deviceContactId = "9fjf4-3mnd9-1j9df",
					contactName = "Bob Smith",
					phoneNumber = "8888",
					isMatchedContact = false,
				},
				{
					deviceContactId = "45gsd-545df-51fgh",
					contactName = "Jake Long",
					hasSentRequest = true,
					phoneNumber = "8888",
					isMatchedContact = false,
				},
				{
					deviceContactId = "9g2df-5h74-v57das",
					contactName = "Kate Murphy",
					hasSentRequest = false,
					phoneNumber = "8888",
					isMatchedContact = false,
				},
			}
			local sortedContacts = getDeviceContacts(state)

			jestExpect(sortedContacts).toEqual(expectedState)
		end)

		it("SHOULD filter out any matched contacts", function()
			local state = {
				byDeviceContactId = {
					["9fjf4-3mnd9-1j9df"] = {
						contactName = "Bob Smith",
						id = "9fjf4-3mnd9-1j9df",
						phoneNumbers = { 8888, 67890 },
					},
					["45gsd-545df-51fgh"] = {
						contactName = "Jake Long",
						id = "45gsd-545df-51fgh",
						phoneNumbers = { 8888, 67890 },
					},
					["1gbv-1f8gs-34ghsa"] = {
						contactName = "Bob Smith",
						id = "1gbv-1f8gs-34ghsa",
						phoneNumbers = { 8888, 67890 },
					},
					["9g2df-5h74-v57das"] = {
						contactName = "Kate Murphy",
						id = "9g2df-5h74-v57das",
						phoneNumbers = { 8888, 67890 },
					},
				},
				deviceContactToRobloxContact = {
					["45gsd-545df-51fgh"] = {},
				},
				hasSentRequest = {
					["1gbv-1f8gs-34ghsa"] = true,
				},
			}

			local expectedState = {
				{
					deviceContactId = "1gbv-1f8gs-34ghsa",
					contactName = "Bob Smith",
					hasSentRequest = true,
					phoneNumber = "8888",
					isMatchedContact = false,
				} :: any,
				{
					deviceContactId = "9fjf4-3mnd9-1j9df",
					contactName = "Bob Smith",
					phoneNumber = "8888",
					isMatchedContact = false,
				},
				{
					deviceContactId = "9g2df-5h74-v57das",
					contactName = "Kate Murphy",
					phoneNumber = "8888",
					isMatchedContact = false,
				},
			}
			local sortedContacts = getDeviceContacts(state)

			jestExpect(sortedContacts).toEqual(expectedState)
		end)

		it("SHOULD return an empty table if the reducer is empty", function()
			local state = {
				byDeviceContactId = {},
			}

			local expectedState = {}
			local sortedContacts = getDeviceContacts(state)

			jestExpect(sortedContacts).toEqual(expectedState)
		end)

		it("SHOULD return an empty table if the store is empty", function()
			local state = {}

			local expectedState = {}
			local sortedContacts = getDeviceContacts(state)

			jestExpect(sortedContacts).toEqual(expectedState)
		end)
	end)
end)
