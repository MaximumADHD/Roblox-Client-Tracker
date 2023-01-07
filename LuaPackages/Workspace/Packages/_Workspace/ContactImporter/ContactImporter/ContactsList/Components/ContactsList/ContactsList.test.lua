-- TODO: SOCCONN-1802 add these tests after hooking up data/functionality

local ContactImporter = script:FindFirstAncestor("ContactImporter")
local devDependencies = require(ContactImporter.devDependencies)
local dependencies = require(ContactImporter.dependencies)

local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it

local UnitTestHelpers = devDependencies.UnitTestHelpers
local runWhileMounted = UnitTestHelpers.runWhileMounted
local llama = dependencies.llama
local RhodiumHelpers = devDependencies.RhodiumHelpers()
local ContactsList = require(script.Parent.ContactsList)

local FindFriendsModal = ContactImporter.FindFriendsModal
local createTreeWithProviders = devDependencies.createTreeWithProviders
local mockStore = require(FindFriendsModal.TestHelpers.mockStore)

local NOOP = function() end

describe("ContactsList", function()
	local screenParams = {
		closeModal = NOOP,
		sendContactFriendRequest = NOOP,
		screenSize = Vector2.new(100, 100),
	}

	local DEFAULT_PROPS = {
		screenSize = Vector2.new(250, 250),
		closeModal = function() end,
		sendContactFriendRequest = function() end,
		distanceFromTop = 100,
		contacts = {},
		navigation = {
			getParam = function(item)
				return screenParams[item]
			end,
		},
		requestFriendship = function() end,
	}

	it("SHOULD create and destroy without errors", function()
		local element = createTreeWithProviders(ContactsList, {
			store = mockStore({}),
			props = DEFAULT_PROPS,
		})

		runWhileMounted(element, function(parent)
			jestExpect(#parent:GetChildren()).toBe(1)
		end)
	end)

	it("SHOULD return empty state if there are no contacts", function()
		local element = createTreeWithProviders(ContactsList, {
			store = mockStore({}),
			props = DEFAULT_PROPS,
		})

		runWhileMounted(element, function(parent)
			local emptyList = RhodiumHelpers.findFirstInstance(parent, {
				Name = "emptyList",
			})
			jestExpect(emptyList).never.toBeNil()
		end)
	end)

	it("SHOULD NOT return empty state if there are contacts", function()
		local state = {
			localUserId = "1111",
			FindFriendsModal = { Contacts = { byContactId = { { contactName = "bob", contactId = "123" } } } },
		}
		local element = createTreeWithProviders(ContactsList, {
			store = mockStore(state),
			props = llama.Dictionary.join(DEFAULT_PROPS, {
				contacts = { { contactName = "bob", contactId = "123" } },
			}),
		})

		runWhileMounted(element, function(parent)
			local emptyList = RhodiumHelpers.findFirstInstance(parent, {
				Name = "emptyList",
			})
			jestExpect(emptyList).toBeNil()
		end)
	end)

	it("SHOULD show shimmer if fetching", function()
		local state = {
			localUserId = "1111",
			FindFriendsModal = { Contacts = { byContactId = { { contactName = "bob", contactId = "123" } } } },
		}
		local element = createTreeWithProviders(ContactsList, {
			store = mockStore(state),
			props = llama.Dictionary.join(DEFAULT_PROPS, {
				isFetching = true,
				contacts = { { contactName = "bob", contactId = "123" } },
			}),
		})

		runWhileMounted(element, function(parent)
			local glimmer = RhodiumHelpers.findFirstInstance(parent, {
				Name = "glimmer1",
			})
			local emptyList = RhodiumHelpers.findFirstInstance(parent, {
				Name = "emptyList",
			})
			jestExpect(emptyList).toBeNil()

			jestExpect(glimmer).never.toBeNil()
		end)
	end)

	it("SHOULD show error state if there is an error", function()
		local element = createTreeWithProviders(ContactsList, {
			store = mockStore({}),
			props = llama.Dictionary.join(DEFAULT_PROPS, {
				hasUploadError = true,
				contacts = {},
			}),
		})

		runWhileMounted(element, function(parent)
			local errorModal = RhodiumHelpers.findFirstInstance(parent, {
				Name = "errorModal",
			})

			jestExpect(errorModal).never.toBeNil()
		end)
	end)
end)
