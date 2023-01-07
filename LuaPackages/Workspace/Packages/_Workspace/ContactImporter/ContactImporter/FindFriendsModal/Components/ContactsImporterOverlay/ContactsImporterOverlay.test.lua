local ContactImporter = script:FindFirstAncestor("ContactImporter")
local FindFriendsModal = ContactImporter.FindFriendsModal
local devDependencies = require(ContactImporter.devDependencies)

local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it
local jest = JestGlobals.jest
local beforeEach = JestGlobals.beforeEach

local act = devDependencies.act
local waitForEvents = devDependencies.DeferredLuaHelpers.waitForEvents
local createTreeWithProviders = devDependencies.createTreeWithProviders
local mockStore = require(FindFriendsModal.TestHelpers.mockStore)

local UnitTestHelpers = devDependencies.UnitTestHelpers
local RhodiumHelpers = devDependencies.RhodiumHelpers()
local runWhileMounted = UnitTestHelpers.runWhileMounted

local ContactsImporterOverlay = require(script.Parent.ContactsImporterOverlay)

local USER_ID = "123"

describe("ContactsImporterOverlay", function()
	local state = {
		LocalUserId = USER_ID,
	}

	local onCloseClicked, onConnectContacts, onLearnMoreClick, onAddFriendsActivated

	beforeEach(function()
		onCloseClicked = jest.fn()
		onConnectContacts = jest.fn()
		onLearnMoreClick = jest.fn()
		onAddFriendsActivated = jest.fn()
	end)

	it("should create and destroy without errors", function()
		local element = createTreeWithProviders(ContactsImporterOverlay, {
			store = mockStore(state),
			props = {
				screenSize = Vector2.new(100, 100),
				onCloseClicked = function()
					onCloseClicked()
				end,
				onConnectContacts = function()
					onConnectContacts()
				end,
				onLearnMoreClick = function()
					onLearnMoreClick()
				end,
				onAddFriendsActivated = function()
					onAddFriendsActivated()
				end,
				isFromAddFriendsPage = true,
			},
		})
		runWhileMounted(element, function(parent)
			jestExpect(#parent:GetChildren()).toBe(1)
		end)
	end)

	it("first button should close the modal if coming from AddFriends", function()
		local element = createTreeWithProviders(ContactsImporterOverlay, {
			store = mockStore(state),
			props = {
				screenSize = Vector2.new(100, 100),
				onCloseClicked = function()
					onCloseClicked()
				end,
				onConnectContacts = function()
					onConnectContacts()
				end,
				onLearnMoreClick = function()
					onLearnMoreClick()
				end,
				onAddFriendsActivated = function()
					onAddFriendsActivated()
				end,
				isFromAddFriendsPage = true,
			},
		})

		runWhileMounted(element, function(parent)
			local button = RhodiumHelpers.findFirstInstance(parent, {
				ClassName = "ImageButton",
				Name = "1",
			})

			waitForEvents.act()
			jestExpect(onCloseClicked).toHaveBeenCalledTimes(0)

			waitForEvents.act()
			act(function()
				RhodiumHelpers.clickInstance(button)
			end)
			jestExpect(onCloseClicked).toHaveBeenCalledTimes(1)
		end)
	end)

	it(
		"first button should navigate to 'Add Friends' page when button pressed if not coming from Add Friends",
		function()
			local element = createTreeWithProviders(ContactsImporterOverlay, {
				store = mockStore(state),
				props = {
					screenSize = Vector2.new(100, 100),
					onCloseClicked = function()
						onCloseClicked()
					end,
					onConnectContacts = function()
						onConnectContacts()
					end,
					onLearnMoreClick = function()
						onLearnMoreClick()
					end,
					onAddFriendsActivated = function()
						onAddFriendsActivated()
					end,
					isFromAddFriendsPage = false,
				},
			})
			runWhileMounted(element, function(parent)
				waitForEvents.act()
				local button = RhodiumHelpers.findFirstInstance(parent, {
					ClassName = "ImageButton",
					Name = "1",
				})

				waitForEvents.act()
				act(function()
					RhodiumHelpers.clickInstance(button)
				end)

				jestExpect(onAddFriendsActivated).toHaveBeenCalledTimes(1)
			end)
		end
	)

	it.skip("should close modal when 'x' button is pressed", function()
		local element = createTreeWithProviders(ContactsImporterOverlay, {
			store = mockStore(state),
			props = {
				screenSize = Vector2.new(100, 100),
				onCloseClicked = function()
					onCloseClicked()
				end,
				onConnectContacts = function()
					onConnectContacts()
				end,
				onLearnMoreClick = function()
					onLearnMoreClick()
				end,
				onAddFriendsActivated = function()
					onAddFriendsActivated()
				end,
				isFromAddFriendsPage = true,
			},
		})
		runWhileMounted(element, function(parent)
			local button = RhodiumHelpers.findFirstInstance(parent, {
				Name = "CloseButton",
			})
			RhodiumHelpers.clickInstance(button)
			jestExpect(onCloseClicked).toHaveBeenCalledTimes(1)
		end)
	end)

	it("should close modal and open webview when Learn More link is pressed", function()
		local element = createTreeWithProviders(ContactsImporterOverlay, {
			store = mockStore(state),
			props = {
				screenSize = Vector2.new(100, 100),
				onCloseClicked = function()
					onCloseClicked()
				end,
				onConnectContacts = function()
					onConnectContacts()
				end,
				onLearnMoreClick = function()
					onLearnMoreClick()
				end,
				onAddFriendsActivated = function()
					onAddFriendsActivated()
				end,
				isFromAddFriendsPage = true,
			},
		})
		runWhileMounted(element, function(parent)
			waitForEvents.act()
			local learnMoreLink = RhodiumHelpers.findFirstInstance(parent, {
				Name = "LearnMore",
			})

			waitForEvents.act()
			act(function()
				RhodiumHelpers.clickInstance(learnMoreLink)
			end)
			jestExpect(onLearnMoreClick).toHaveBeenCalledTimes(1)
		end)
	end)
end)
