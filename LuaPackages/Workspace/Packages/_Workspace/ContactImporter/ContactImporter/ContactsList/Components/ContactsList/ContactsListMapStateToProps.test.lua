local ContactImporter = script:FindFirstAncestor("ContactImporter")
local dependencies = require(ContactImporter.dependencies)
local devDependencies = require(ContactImporter.devDependencies)

local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local it = JestGlobals.it

local RoduxContacts = dependencies.RoduxContacts
local Selectors = RoduxContacts.Selectors
local RODUX_KEY = require(ContactImporter.Common.Constants).RODUX_KEY

local contactsMapStateToProps = require(script.Parent.ContactsListMapStateToProps)

it("SHOULD return correct data for default state", function()
	local state = {
		LocalUserId = "1111",
		[RODUX_KEY] = {
			NetworkStatus = {},
			Contacts = {
				byContactId = {},
			},
		},
	}
	local newProps = contactsMapStateToProps(state)
	jestExpect(newProps).toEqual({
		localUserId = state.LocalUserId,
		contacts = {},
		isFetching = false,
	})
end)

it("SHOULD return correct data with not empty state", function()
	local state = {
		LocalUserId = "1111",
		[RODUX_KEY] = {
			NetworkStatus = {},
			Contacts = {
				byContactId = { { contactName = "bob", contactId = "123" } },
			},
		},
	}

	local newProps = contactsMapStateToProps(state)
	jestExpect(newProps).toEqual({
		localUserId = state.LocalUserId,
		contacts = Selectors.sortContacts(state),
		isFetching = false,
	})
end)
