local ContactImporter = script:FindFirstAncestor("ContactImporter")
local devDependencies = require(ContactImporter.devDependencies)

local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local it = JestGlobals.it

local RODUX_KEY = require(ContactImporter.Common.Constants).RODUX_KEY

local contactsMapStateToProps = require(script.Parent.ContactsListMapStateToPropsV2)

it("SHOULD return correct data for default state", function()
	local state = {
		LocalUserId = "1111",
		[RODUX_KEY] = {
			NetworkStatus = {},
			Contacts = {
				byDeviceContactId = {},
			},
		},
		ScreenSize = Vector2.new(1, 0),
	}
	local newProps = contactsMapStateToProps(state)
	jestExpect(newProps).toEqual({
		localUserId = state.LocalUserId,
		deviceContacts = {},
		matchedContacts = {},
		isFetching = false,
		screenSize = Vector2.new(1, 0),
	})
end)

it("SHOULD return correct data with device contacts in the table", function()
	local state = {
		LocalUserId = "1111",
		[RODUX_KEY] = {
			NetworkStatus = {},
			Contacts = {
				byDeviceContactId = { ABC = { contactName = "bob", id = "123", phoneNumbers = { 12344, 8976 } } },
			},
		},
		ScreenSize = Vector2.new(1, 0),
	}

	local newProps = contactsMapStateToProps(state)
	jestExpect(newProps).toEqual({
		localUserId = state.LocalUserId,
		deviceContacts = {
			{ contactName = "bob", deviceContactId = "123", phoneNumber = "12344", isMatchedContact = false },
		},
		matchedContacts = {},
		isFetching = false,
		screenSize = Vector2.new(1, 0),
	})
end)

it("SHOULD return matched contacts and device contacts", function()
	local state = {
		LocalUserId = "1111",
		[RODUX_KEY] = {
			NetworkStatus = {},
			Contacts = {
				byContactId = { MMM = { contactName = "bob", contactId = "MMM" } },
				hasSentRequest = {
					["123"] = true,
				},
				byDeviceContactId = { ABC = { contactName = "bob", id = "123", phoneNumbers = { 12344, 8976 } } },
			},
		},
		ScreenSize = Vector2.new(1, 0),
	}

	local newProps = contactsMapStateToProps(state)
	jestExpect(newProps).toEqual({
		localUserId = state.LocalUserId,
		matchedContacts = {
			{ contactName = "bob", contactId = "MMM", isMatchedContact = true } :: any,
		},
		deviceContacts = {
			{
				contactName = "bob",
				deviceContactId = "123",
				phoneNumber = "12344",
				isMatchedContact = false,
				hasSentRequest = true,
			},
		},
		isFetching = false,
		screenSize = Vector2.new(1, 0),
	})
end)

it("SHOULD filter out matched contacts mixed list if there are also matched contacts", function()
	local state = {
		LocalUserId = "1111",
		[RODUX_KEY] = {
			NetworkStatus = {},
			Contacts = {
				byContactId = { MMM = { contactName = "bob", contactId = "MMM" } },
				hasSentRequest = {
					MMM = true,
				},
				deviceContactToRobloxContact = {
					["123"] = {},
				},
				byDeviceContactId = { ABC = { contactName = "bob", id = "123", phoneNumbers = { 12344, 8976 } } },
			},
		},
		ScreenSize = Vector2.new(1, 0),
	}

	local newProps = contactsMapStateToProps(state)
	jestExpect(newProps).toEqual({
		localUserId = state.LocalUserId,
		matchedContacts = {
			{ contactName = "bob", contactId = "MMM", isMatchedContact = true, hasSentRequest = true },
		},
		deviceContacts = {},
		isFetching = false,
		screenSize = Vector2.new(1, 0),
	})
end)
