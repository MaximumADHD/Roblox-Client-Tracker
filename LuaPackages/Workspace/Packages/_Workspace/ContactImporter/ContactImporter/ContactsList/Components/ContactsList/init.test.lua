local ContactImporter = script:FindFirstAncestor("ContactImporter")
local devDependencies = require(ContactImporter.devDependencies)
local dependencies = require(ContactImporter.dependencies)

local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it
local jest = JestGlobals.jest
local beforeAll = JestGlobals.beforeAll
local afterAll = JestGlobals.afterAll
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach

local UnitTestHelpers = devDependencies.UnitTestHelpers
local runWhileMounted = UnitTestHelpers.runWhileMounted
local Dash = dependencies.Dash

local NetworkingUserSettings = dependencies.NetworkingUserSettings
local Promise = dependencies.Promise
local ContactsListContainer = require(script.Parent)

local getFFlagFriendInvitesEnabledForSoothsayers =
	require(ContactImporter.Flags.getFFlagFriendInvitesEnabledForSoothsayers)
local FindFriendsModal = ContactImporter.FindFriendsModal
local RODUX_KEY = require(ContactImporter.Common.Constants).RODUX_KEY
local createTreeWithProviders = devDependencies.createTreeWithProviders
local mockStore = require(FindFriendsModal.TestHelpers.mockStore)
local mockRawContacts = require(FindFriendsModal.TestHelpers.mockRawContacts)
local findElementHelpers = require(ContactImporter.TestHelpers.findElementHelpers)

local runTestsWithProps = function(config: { store: any, shouldShowContentFrame: boolean, describe: string })
	describe(config.describe, function()
		local screenParams = {
			closeModal = Dash.noop,
			sendContactFriendRequest = Dash.noop,
		}

		local defaultProps, supportsContacts, getContacts
		local checkForContactsListV2 = findElementHelpers.findElement({ Name = "contentFrame" })
		local originalContactImporterCatchErrorWithGetUserSettings

		beforeAll(function()
			originalContactImporterCatchErrorWithGetUserSettings =
				game:SetFastFlagForTesting("ContactImporterCatchErrorWithGetUserSettings", false)
		end)

		afterAll(function()
			game:SetFastFlagForTesting(
				"ContactImporterCatchErrorWithGetUserSettings",
				originalContactImporterCatchErrorWithGetUserSettings
			)
		end)

		beforeEach(function()
			NetworkingUserSettings.UpdateUserSettings.Mock.clear()

			supportsContacts = jest.fn().mockImplementation(function()
				return Promise.resolve(true)
			end)
			getContacts = jest.fn().mockImplementation(function()
				return Promise.resolve({
					countryCode = "US",
					contacts = mockRawContacts.shortList,
				})
			end)

			defaultProps = {
				contacts = {},
				navigation = {
					getParam = function(item)
						return screenParams[item]
					end,
					pop = Dash.noop,
				},
				contactsProtocol = {
					supportsContacts = supportsContacts,
					getContacts = getContacts,
				},
			}

			NetworkingUserSettings.UpdateUserSettings.Mock.reply(function()
				return {
					responseBody = {},
				}
			end)
		end)

		afterEach(function()
			NetworkingUserSettings.UpdateUserSettings.Mock.clear()
		end)

		it("SHOULD create and destroy without errors", function()
			local element = createTreeWithProviders(ContactsListContainer, {
				store = config.store,
				props = defaultProps,
			})

			runWhileMounted(element, function(parent)
				jestExpect(#parent:GetChildren()).toBe(1)
			end)
		end)

		it("SHOULD fetch for contacts on mount", function()
			local element = createTreeWithProviders(ContactsListContainer, {
				store = config.store,
				props = defaultProps,
			})

			runWhileMounted(element, function(parent)
				checkForContactsListV2(parent, { assertElementExists = config.shouldShowContentFrame })
				jestExpect(supportsContacts).toHaveBeenCalledTimes(1)
				jestExpect(getContacts).toHaveBeenCalledTimes(1)
			end)
		end)
	end)
end

describe("soothSayerEnabled with blended", function()
	local soothsayerString
	beforeAll(function()
		soothsayerString = game:SetFastStringForTesting("FriendInviteVariantForSoothsayers", "blended")
	end)

	afterAll(function()
		game:SetFastStringForTesting("FriendInviteVariantForSoothsayers", soothsayerString)
	end)

	runTestsWithProps({
		store = mockStore({
			ScreenSize = Vector2.new(100, 100),
			IsLocalUserSoothsayer = true,
			LocalUserId = "123",
			[RODUX_KEY] = {
				NetworkStatus = {},
			},
		}),
		shouldShowContentFrame = getFFlagFriendInvitesEnabledForSoothsayers(),
		describe = "soothSayerEnabled blended",
	})
end)

describe("soothSayerEnabled default", function()
	runTestsWithProps({
		store = mockStore({
			ScreenSize = Vector2.new(100, 100),
			IsLocalUserSoothsayer = true,
			LocalUserId = "123",
			[RODUX_KEY] = {
				NetworkStatus = {},
			},
		}),
		shouldShowContentFrame = getFFlagFriendInvitesEnabledForSoothsayers(),
		describe = "soothSayerEnabled default",
	})
end)

describe("soothsayerDisabled", function()
	runTestsWithProps({
		store = mockStore({
			ScreenSize = Vector2.new(100, 100),
			IsLocalUserSoothsayer = false,
			LocalUserId = "123",
			[RODUX_KEY] = {
				NetworkStatus = {},
			},
		}),
		shouldShowContentFrame = false,
		describe = "soothsayerDisabled",
	})
end)

describe("no config", function()
	runTestsWithProps({
		store = mockStore({
			ScreenSize = Vector2.new(100, 100),
			IsLocalUserSoothsayer = false,
			LocalUserId = "123",
			[RODUX_KEY] = {
				NetworkStatus = {},
			},
		}),
		shouldShowContentFrame = false,
		describe = "friendInvitesFlag disabled",
	})
end)
