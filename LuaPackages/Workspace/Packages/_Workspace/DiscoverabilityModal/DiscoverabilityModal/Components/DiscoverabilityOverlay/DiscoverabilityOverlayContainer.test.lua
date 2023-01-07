local DiscoverabilityModal = script:FindFirstAncestor("DiscoverabilityModal")
local mockStore = require(DiscoverabilityModal.TestHelpers.mockStore)
local createTreeWithProviders = require(DiscoverabilityModal.TestHelpers.createTreeWithProviders)
local Constants = require(DiscoverabilityModal.Common.Constants)

local dependencies = require(DiscoverabilityModal.dependencies)
local EnumScreens = dependencies.SocialModalsCommon.EnumScreens
local NetworkingUserSettings = dependencies.NetworkingUserSettings
local Promise = dependencies.Promise
local PermissionsProtocol = dependencies.PermissionsProtocol
local Dash = dependencies.Dash

local devDependencies = require(DiscoverabilityModal.devDependencies)
local waitForEvents = devDependencies.DeferredLuaHelpers.waitForEvents
local ReactRoblox = devDependencies.ReactRoblox
local UnitTestHelpers = devDependencies.UnitTestHelpers
local runWhileMounted = UnitTestHelpers.runWhileMounted
local RhodiumHelpers = devDependencies.RhodiumHelpers()
local JestGlobals = devDependencies.JestGlobals
local beforeAll = JestGlobals.beforeAll
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local DiscoverabilityOverlayContainer = require(script.Parent.DiscoverabilityOverlayContainer)

describe("DiscoverabilityOverlayContainer", function()
	local showToast, navigate
	local navigationParams = {}
	local navigation = {}
	local DEFAULT_PROPS = {}
	local DEFAULT_STORE = {}

	beforeAll(function()
		navigate = jest.fn()
		showToast = jest.fn()
		navigationParams = {
			[Constants.SHOW_TOAST] = showToast,
		}

		navigation = {
			getParam = function(param)
				return navigationParams[param]
			end,
			navigate = navigate,
			replace = function()
				return
			end,
			pop = function()
				return
			end,
		}

		DEFAULT_PROPS = {
			navigation = navigation,
			checkOrRequestPermissions = jest.fn().mockImplementation(function()
				return Promise.resolve()
			end),
		}

		DEFAULT_STORE = {
			ScreenSize = Vector2.new(500, 500),
			LocalUserId = "1",
			DiscoverabilityModal = {
				UserPermissions = {
					userSettingsMetadata = {
						prefillDiscoverabilitySetting = true,
					},
				},
			},
		}
	end)

	it("SHOULD mount and unmount with default state", function()
		local discoverabilityOverlayContainer = createTreeWithProviders(DiscoverabilityOverlayContainer, {
			store = mockStore(DEFAULT_STORE),
			props = DEFAULT_PROPS,
		})
		runWhileMounted(discoverabilityOverlayContainer, function(parent)
			expect(#parent:GetChildren()).toBe(1)
		end)
	end)

	describe("RadioButtons", function()
		it("SHOULD not prefill YES setting if value is false", function()
			local discoverabilityOverlayContainer = createTreeWithProviders(DiscoverabilityOverlayContainer, {
				store = mockStore(Dash.join(DEFAULT_STORE, {
					DiscoverabilityModal = {
						UserPermissions = {
							userSettingsMetadata = {
								prefillDiscoverabilitySetting = false,
							},
						},
					},
				})),
				props = DEFAULT_PROPS,
			})

			runWhileMounted(discoverabilityOverlayContainer, function(parent)
				local yesRadioButton = RhodiumHelpers.findFirstInstance(parent, {
					Name = "RadioButton1",
				})
				expect(yesRadioButton.InputButtonImage.InputFillImage.Size).toBe(UDim2.fromOffset(0, 0))
			end)
		end)

		it("SHOULD prefill YES setting if value is true", function()
			local discoverabilityOverlayContainer = createTreeWithProviders(DiscoverabilityOverlayContainer, {
				store = mockStore(DEFAULT_STORE),
				props = DEFAULT_PROPS,
			})

			runWhileMounted(discoverabilityOverlayContainer, function(parent)
				local yesRadioButton = RhodiumHelpers.findFirstInstance(parent, {
					Name = "RadioButton1",
				})
				expect(yesRadioButton.InputButtonImage.InputFillImage.Size).toBe(UDim2.fromOffset(18, 18))
			end)
		end)
	end)

	it("SHOULD should navigate to contactsList if authorized from connect contacts button is pressed", function()
		local sendAPIPostSpy = jest.fn()
		local checkOrRequestPermissions = jest.fn(function()
			return Promise.resolve(PermissionsProtocol.Status.AUTHORIZED)
		end)
		NetworkingUserSettings.UpdateUserSettings.Mock.reply(function()
			sendAPIPostSpy()
			return {
				responseBody = {},
			}
		end)

		local discoverabilityOverlayContainer = createTreeWithProviders(DiscoverabilityOverlayContainer, {
			store = mockStore(DEFAULT_STORE),
			props = Dash.join(DEFAULT_PROPS, {
				checkOrRequestPermissions = checkOrRequestPermissions,
			}),
		})

		runWhileMounted(discoverabilityOverlayContainer, function(parent)
			waitForEvents.act()
			expect(#parent:GetChildren()).toBe(1)

			local buttons = RhodiumHelpers.findFirstInstance(parent, {
				Name = "Buttons",
			})
			local button = buttons[1][1]
			expect(button).never.toBeNil()

			waitForEvents.act()
			ReactRoblox.act(function()
				RhodiumHelpers.clickInstance(button)
			end)
			expect(checkOrRequestPermissions).toHaveBeenCalledTimes(1)
			expect(sendAPIPostSpy).toHaveBeenCalledTimes(1)
			expect(navigate).toHaveBeenCalledWith(EnumScreens.ContactsList)
		end)
	end)
end)
