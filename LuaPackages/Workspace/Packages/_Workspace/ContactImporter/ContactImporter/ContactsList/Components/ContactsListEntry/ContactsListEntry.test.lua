local ContactImporter = script:FindFirstAncestor("ContactImporter")
local devDependencies = require(ContactImporter.devDependencies)

local UnitTestHelpers = devDependencies.UnitTestHelpers
local RhodiumHelpers = devDependencies.RhodiumHelpers()
local runWhileMounted = UnitTestHelpers.runWhileMounted

local findImageSet = devDependencies.findImageSet
local ContactsList = ContactImporter.ContactsList

local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it
local jest = JestGlobals.jest

local createTreeWithProviders = devDependencies.createTreeWithProviders
local mockStore = require(ContactImporter.TestHelpers.mockStore)
local findElementHelpers = require(ContactImporter.TestHelpers.findElementHelpers)
local ContactsListEntry = require(ContactsList.Components.ContactsListEntry)

local getFFlagContactImporterAvatarEnabled = require(ContactImporter.Flags.getFFlagContactImporterAvatarEnabled)

describe("ContactsListEntry", function()
	local state = {}
	local findSendButton = findElementHelpers.findElement(findImageSet("icons/actions/friends/friendAdd"))
	local findSentButton = findElementHelpers.findElement(findImageSet("icons/actions/friends/friendpending"))

	it("SHOULD create and destroy without errors", function()
		local element = createTreeWithProviders(ContactsListEntry, {
			store = mockStore(state),
			props = {
				contactName = "contactName",
				contactId = "contactId",
			},
		})
		runWhileMounted(element, function(parent)
			jestExpect(#parent:GetChildren()).toBe(1)
		end)
	end)

	it("SHOULD send a contact friend request when right button is pressed", function()
		local requestFriendship = jest.fn()
		local element = createTreeWithProviders(ContactsListEntry, {
			store = mockStore(state),
			props = {
				contactName = "contactName",
				contactId = "contactId",
				requestFriendship = requestFriendship,
			},
		})
		runWhileMounted(element, function(parent)
			local button = RhodiumHelpers.findFirstInstance(parent, {
				ClassName = "ImageButton",
				Name = "requestContactButton",
			})

			RhodiumHelpers.clickInstance(button)

			jestExpect(requestFriendship).toHaveBeenCalledTimes(1)
			jestExpect(requestFriendship).toHaveBeenCalledWith("contactId")
		end)
	end)

	it("SHOULD show as sent if a message has been sent", function()
		local requestFriendship = jest.fn()
		local element = createTreeWithProviders(ContactsListEntry, {
			store = mockStore(state),
			props = {
				hasSentRequest = true,
				contactName = "contactName",
				contactId = "contactId",
				requestFriendship = requestFriendship,
			},
		})
		runWhileMounted(element, function(parent)
			findSentButton(parent, { assertElementExists = true })
			findSendButton(parent, { assertElementExists = false })
		end)
	end)

	it("SHOULD show as sendable if a message has not been sent", function()
		local requestFriendship = jest.fn()
		local element = createTreeWithProviders(ContactsListEntry, {
			store = mockStore(state),
			props = {
				contactName = "contactName",
				contactId = "contactId",
				requestFriendship = requestFriendship,
			},
		})
		runWhileMounted(element, function(parent)
			findSendButton(parent, { assertElementExists = true })
			findSentButton(parent, { assertElementExists = false })
		end)
	end)

	if getFFlagContactImporterAvatarEnabled() then
		it("SHOULD openProfilePeekView when clicked", function()
			local openProfilePeekView = jest.fn()
			local element = createTreeWithProviders(ContactsListEntry, {
				store = mockStore(state),
				props = {
					contactName = "contactName",
					contactId = "contactId",
					openProfilePeekView = openProfilePeekView,
				},
			})

			runWhileMounted(element, function(parent)
				local avatarHead = RhodiumHelpers.findFirstInstance(parent, {
					Name = "genericHead",
				})

				RhodiumHelpers.clickInstance(avatarHead)

				jestExpect(openProfilePeekView).toHaveBeenCalledTimes(1)
			end)
		end)
	end
end)
