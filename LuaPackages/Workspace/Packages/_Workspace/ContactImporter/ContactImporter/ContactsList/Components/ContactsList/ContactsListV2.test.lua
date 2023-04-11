local ContactImporter = script:FindFirstAncestor("ContactImporter")
local devDependencies = require(ContactImporter.devDependencies)
local dependencies = require(ContactImporter.dependencies)

local act = devDependencies.act
local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it

local UnitTestHelpers = devDependencies.UnitTestHelpers
local runWhileMounted = UnitTestHelpers.runWhileMounted
local RhodiumHelpers = devDependencies.RhodiumHelpers()
local ContactsListV2 = require(script.Parent.ContactsListV2)
local TextKeys = require(ContactImporter.Common.TextKeys)
local findElementHelpers = require(ContactImporter.TestHelpers.findElementHelpers)
local OffPlatformFriendRequestsIXP = require(ContactImporter.Flags.OffPlatformFriendRequestsIXP)
local IXPVariants = OffPlatformFriendRequestsIXP.IXPVariants

local createTreeWithProviders = devDependencies.createTreeWithProviders
local Dash = dependencies.Dash

describe("ContactsListV2", function()
	local screenParams = {
		closeModal = Dash.noop,
		sendContactFriendRequest = Dash.noop,
		screenSize = Vector2.new(100, 100),
	}

	local DEFAULT_PROPS = {
		screenSize = Vector2.new(250, 250),
		closeModal = Dash.noop,
		sendContactFriendRequest = Dash.noop,
		distanceFromTop = 100,
		deviceContacts = {},
		matchedContacts = {},
		showAddFriendsButton = false,
		navigation = {
			getParam = function(item)
				return screenParams[item]
			end,
		},
		requestFriendship = Dash.noop,
		onAddFriendsActivated = Dash.noop,
	}

	it("SHOULD create and destroy without errors", function()
		local element = createTreeWithProviders(ContactsListV2, {
			props = DEFAULT_PROPS,
		})

		runWhileMounted(element, function(parent)
			jestExpect(#parent:GetChildren()).toBe(1)
		end)
	end)

	it("SHOULD return empty state if there are no contacts", function()
		local element = createTreeWithProviders(ContactsListV2, {
			props = DEFAULT_PROPS,
		})

		runWhileMounted(element, function(parent)
			findElementHelpers.checkEmptyList(parent, { assertElementExists = true })
			findElementHelpers.checkCloseButton(parent, { assertElementExists = true })
			findElementHelpers.checkFailedList(parent, { assertElementExists = false })
			findElementHelpers.checkLoadingList(parent, { assertElementExists = false })
			findElementHelpers.checkGoToAddFriends(parent, { assertElementExists = false })
		end)
	end)

	it("SHOULD return empty state with option to go to add friends if showAddFriendsButton", function()
		local element = createTreeWithProviders(ContactsListV2, {
			props = Dash.join(DEFAULT_PROPS, { showAddFriendsButton = true }),
		})

		runWhileMounted(element, function(parent)
			findElementHelpers.checkEmptyList(parent, { assertElementExists = true })
			findElementHelpers.checkCloseButton(parent, { assertElementExists = true })
			findElementHelpers.checkFailedList(parent, { assertElementExists = false })
			findElementHelpers.checkLoadingList(parent, { assertElementExists = false })
			findElementHelpers.checkGoToAddFriends(parent, { assertElementExists = true })
		end)
	end)

	if devDependencies.UIBloxUniversalAppConfig.enableStandardButtonSizes then
		it("SHOULD NOT return empty state if there are contacts", function()
			local element = createTreeWithProviders(ContactsListV2, {
				props = Dash.join(DEFAULT_PROPS, {
					deviceContacts = { { contactName = "bob", contactId = "123" } },
					showAddFriendsButton = true,
				}),
			})

			local checkForContact = findElementHelpers.findElement({ Text = "bob" })

			runWhileMounted(element, function(parent)
				checkForContact(parent, { assertElementExists = true })
				findElementHelpers.checkEmptyList(parent, { assertElementExists = false })
				findElementHelpers.checkCloseButton(parent, { assertElementExists = true })
				findElementHelpers.checkFailedList(parent, { assertElementExists = false })
				findElementHelpers.checkLoadingList(parent, { assertElementExists = false })
				findElementHelpers.checkGoToAddFriends(parent, { assertElementExists = false })
			end)
		end)

		it("SHOULD filter out contacts if contact names don't match search query", function()
			local element = createTreeWithProviders(ContactsListV2, {
				props = Dash.join(DEFAULT_PROPS, {
					deviceContacts = { { contactName = "bob", contactId = "123" } },
					showAddFriendsButton = true,
				}),
			})

			local checkForContact = findElementHelpers.findElement({ Text = "bob" })
			local checkForSearchBar = findElementHelpers.findElement({ Name = "inputTextBox" })
			local checkForSearchBarEmptyList = findElementHelpers.findElement({ Text = TextKeys.NO_RESULTS })

			runWhileMounted(element, function(parent)
				local searchBar = checkForSearchBar(parent, { assertElementExists = true })
				checkForContact(parent, { assertElementExists = true })

				act(function()
					RhodiumHelpers.typeTextIntoElement(searchBar, "foo")
				end)

				checkForContact(parent, { assertElementExists = false })
				checkForSearchBarEmptyList(parent, { assertElementExists = true })
			end)
		end)

		it("SHOULD NOT filter out contacts that match search query", function()
			local element = createTreeWithProviders(ContactsListV2, {
				props = Dash.join(DEFAULT_PROPS, {
					deviceContacts = { { contactName = "bob", contactId = "123" } },
					showAddFriendsButton = true,
				}),
			})

			local checkForContact = findElementHelpers.findElement({ Text = "bob" })
			local checkForSearchBar = findElementHelpers.findElement({ Name = "inputTextBox" })
			local checkForSearchBarEmptyList = findElementHelpers.findElement({ Text = TextKeys.NO_RESULTS })

			runWhileMounted(element, function(parent)
				local searchBar = checkForSearchBar(parent, { assertElementExists = true })
				checkForContact(parent, { assertElementExists = true })

				act(function()
					RhodiumHelpers.typeTextIntoElement(searchBar, "bo")
				end)

				checkForContact(parent, { assertElementExists = true })
				checkForSearchBarEmptyList(parent, { assertElementExists = false })
			end)
		end)

		it("SHOULD NOT show the divider bar if there are no results", function()
			local element = createTreeWithProviders(ContactsListV2, {
				props = Dash.join(DEFAULT_PROPS, {
					deviceContacts = { { contactName = "alice", contactId = "123" } },
					matchedContacts = { { contactName = "eve", contactId = "456" } },
					showAddFriendsButton = true,
				}),
			})

			local checkForDivider = findElementHelpers.findElement({ Name = "divider" })
			local checkForSearchBar = findElementHelpers.findElement({ Name = "inputTextBox" })

			runWhileMounted(element, function(parent)
				local searchBar = checkForSearchBar(parent, { assertElementExists = true })

				act(function()
					RhodiumHelpers.typeTextIntoElement(searchBar, "b")
				end)

				checkForDivider(parent, { assertElementExists = false })
			end)
		end)

		it("SHOULD NOT show the divider bar if there are only unmatched contacts results", function()
			local element = createTreeWithProviders(ContactsListV2, {
				props = Dash.join(DEFAULT_PROPS, {
					deviceContacts = { { contactName = "alice", contactId = "123" } },
					matchedContacts = { { contactName = "eve", contactId = "456" } },
					showAddFriendsButton = true,
				}),
			})

			local checkForDivider = findElementHelpers.findElement({ Name = "divider" })
			local checkForSearchBar = findElementHelpers.findElement({ Name = "inputTextBox" })

			runWhileMounted(element, function(parent)
				local searchBar = checkForSearchBar(parent, { assertElementExists = true })

				act(function()
					RhodiumHelpers.typeTextIntoElement(searchBar, "alice")
				end)

				checkForDivider(parent, { assertElementExists = false })
			end)
		end)
	end

	it(
		"SHOULD show the divider bar between matched and unmatched contacts if both result types exist after filtering",
		function()
			local element = createTreeWithProviders(ContactsListV2, {
				props = Dash.join(DEFAULT_PROPS, {
					deviceContacts = { { contactName = "alice", contactId = "123" } },
					matchedContacts = { { contactName = "eve", contactId = "456" } },
					showAddFriendsButton = true,
				}),
			})

			local checkForDivider = findElementHelpers.findElement({ Name = "divider" })
			local checkForSearchBar = findElementHelpers.findElement({ Name = "inputTextBox" })

			runWhileMounted(element, function(parent)
				local searchBar = checkForSearchBar(parent, { assertElementExists = true })

				act(function()
					RhodiumHelpers.typeTextIntoElement(searchBar, "e")
				end)

				checkForDivider(parent, { assertElementExists = true })
			end)
		end
	)

	it("SHOULD show the divider bar if there are only matched contacts results", function()
		local element = createTreeWithProviders(ContactsListV2, {
			props = Dash.join(DEFAULT_PROPS, {
				deviceContacts = { { contactName = "alice", contactId = "123" } },
				matchedContacts = { { contactName = "eve", contactId = "456" } },
				showAddFriendsButton = true,
			}),
		})

		local checkForDivider = findElementHelpers.findElement({ Name = "divider" })
		local checkForSearchBar = findElementHelpers.findElement({ Name = "inputTextBox" })

		runWhileMounted(element, function(parent)
			local searchBar = checkForSearchBar(parent, { assertElementExists = true })

			act(function()
				RhodiumHelpers.typeTextIntoElement(searchBar, "eve")
			end)

			checkForDivider(parent, { assertElementExists = true })
		end)
	end)

	it("SHOULD show shimmer if fetching", function()
		local element = createTreeWithProviders(ContactsListV2, {
			props = Dash.join(DEFAULT_PROPS, {
				isFetching = true,
				matchedContacts = { { contactName = "bob", contactId = "123" } },
				showAddFriendsButton = true,
			}),
		})

		local checkForContact = findElementHelpers.findElement({ Text = "bob" })

		runWhileMounted(element, function(parent)
			findElementHelpers.checkLoadingList(parent, { assertElementExists = true })
			findElementHelpers.checkFailedList(parent, { assertElementExists = false })
			findElementHelpers.checkEmptyList(parent, { assertElementExists = false })
			checkForContact(parent, { assertElementExists = false })

			local buttons = RhodiumHelpers.findFirstInstance(parent, {
				Name = "Buttons",
			})
			jestExpect(buttons[1][1]).never.toBeNil()
		end)
	end)

	it("SHOULD show error state if there is an error", function()
		local element = createTreeWithProviders(ContactsListV2, {
			props = Dash.join(DEFAULT_PROPS, {
				hasUploadError = true,
			}),
		})

		runWhileMounted(element, function(parent)
			findElementHelpers.checkFailedList(parent, { assertElementExists = true })
			findElementHelpers.checkCloseButton(parent, { assertElementExists = true })
			findElementHelpers.checkLoadingList(parent, { assertElementExists = false })
			findElementHelpers.checkEmptyList(parent, { assertElementExists = false })
			findElementHelpers.checkGoToAddFriends(parent, { assertElementExists = false })
		end)
	end)

	it("SHOULD return error state with option to go to add friends if showAddFriendsButton", function()
		local element = createTreeWithProviders(ContactsListV2, {
			props = Dash.join(DEFAULT_PROPS, { showAddFriendsButton = true, hasUploadError = true }),
		})

		runWhileMounted(element, function(parent)
			findElementHelpers.checkEmptyList(parent, { assertElementExists = false })
			findElementHelpers.checkCloseButton(parent, { assertElementExists = true })
			findElementHelpers.checkFailedList(parent, { assertElementExists = true })
			findElementHelpers.checkLoadingList(parent, { assertElementExists = false })
			findElementHelpers.checkGoToAddFriends(parent, { assertElementExists = true })
		end)
	end)

	if devDependencies.UIBloxUniversalAppConfig.enableStandardButtonSizes then
		it("SHOULD show the correct text when invites variant", function()
			local element = createTreeWithProviders(ContactsListV2, {
				props = Dash.join(DEFAULT_PROPS, {
					variant = IXPVariants.INVITES_ONLY,
					matchedContacts = { { contactName = "bob", contactId = "123" } },
				}),
			})

			runWhileMounted(element, function(parent)
				local descriptionText = RhodiumHelpers.findFirstInstance(parent, { Name = "descriptionText" })
				jestExpect(descriptionText.Text).toBe(TextKeys.CONTACTS_LIST_BLURB_INVITES)
			end)
		end)

		it("SHOULD show the correct text when blended variant", function()
			local element = createTreeWithProviders(ContactsListV2, {
				props = Dash.join(DEFAULT_PROPS, {
					variant = IXPVariants.BLENDED,
					isPhoneVerified = true,
					matchedContacts = { { contactName = "bob", contactId = "123" } },
				}),
			})

			runWhileMounted(element, function(parent)
				local descriptionText = RhodiumHelpers.findFirstInstance(parent, { Name = "descriptionText" })
				jestExpect(descriptionText.Text).toBe(TextKeys.CONTACTS_LIST_BLURB_MIXED)
			end)
		end)
	end
end)
