local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local Constants = require(FriendsLanding.Common.Constants)
local contactImporterWarning = require(FriendsLanding.installReducer.contactImporterWarning)
local waitUntil = require(FriendsLanding.TestHelpers.waitUntil)
local ImpressionEvents = require(FriendsLanding.FriendsLandingAnalytics.ImpressionEvents)
local getFFlagShowContactImporterTooltipOnce = require(FriendsLanding.Flags.getFFlagShowContactImporterTooltipOnce)
local createInstanceWithProviders = require(FriendsLanding.TestHelpers.createInstanceWithProviders)
local MockAppStorageService = require(FriendsLanding.TestHelpers.MockAppStorageService)

local dependencies = require(FriendsLanding.dependencies)
local FriendsNetworking = dependencies.FriendsNetworking
local Dash = dependencies.Dash
local Rodux = dependencies.Rodux

local devDependencies = require(FriendsLanding.devDependencies)
local RhodiumHelpers = devDependencies.RhodiumHelpers
local mockLocale = devDependencies.UnitTestHelpers.mockLocale

local JestGlobals = devDependencies.JestGlobals
local beforeAll = JestGlobals.beforeAll
local afterEach = JestGlobals.afterEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local ContactImporterWarningTooltipContainer = require(script.Parent.ContactImporterWarningTooltipContainer)

local TOOLTIP_NAME = "Tooltip"

local showContactImporterWarningState = {
	[Constants.RODUX_KEY] = {
		ContactImporterWarning = {
			contactImporterFriendRequests = { ["1989"] = true },
			seenContactImporterFriendRequest = false,
		},
	},
}

local seenContactImporterFriendRequestState = {
	[Constants.RODUX_KEY] = {
		ContactImporterWarning = {
			contactImporterFriendRequests = { ["1989"] = true },
			seenContactImporterFriendRequest = true,
		},
	},
}

local noContactImporterFriendRequests = {
	[Constants.RODUX_KEY] = {
		ContactImporterWarning = {
			contactImporterFriendRequests = {},
			seenContactImporterFriendRequest = false,
		},
	},
}

describe("mapStateToProps", function()
	if not getFFlagShowContactImporterTooltipOnce() then
		it(
			"SHOULD return true if there are contactImporterFriendRequests and seenContactImporterFriendRequest is false",
			function()
				local result = ContactImporterWarningTooltipContainer.mapStateToProps(showContactImporterWarningState, {
					appStorageService = MockAppStorageService.new({
						[Constants.TOOLTIP_APP_STORAGE_KEY] = "true",
					}),
				})

				expect(result).toEqual({
					showTooltip = true,
				})
			end
		)
	end

	it("SHOULD return false if there are no contactImporterFriendRequests", function()
		local result = ContactImporterWarningTooltipContainer.mapStateToProps(noContactImporterFriendRequests, {
			appStorageService = MockAppStorageService.new({
				[Constants.TOOLTIP_APP_STORAGE_KEY] = "true",
			}),
		})

		expect(result).toEqual({
			showTooltip = false,
		})
	end)

	it("SHOULD return false if seenContactImporterFriendRequest is true", function()
		local result = ContactImporterWarningTooltipContainer.mapStateToProps(seenContactImporterFriendRequestState, {
			appStorageService = MockAppStorageService.new({
				[Constants.TOOLTIP_APP_STORAGE_KEY] = "true",
			}),
		})

		expect(result).toEqual({
			showTooltip = false,
		})
	end)

	it("SHOULD return false by default", function()
		local result = ContactImporterWarningTooltipContainer.mapStateToProps({
			[Constants.RODUX_KEY] = {
				ContactImporterWarning = {},
			},
		}, {})

		expect(result).toEqual({
			showTooltip = false,
		})
	end)
end)

describe("mapDispatchToProps", function()
	expect(ContactImporterWarningTooltipContainer.mapDispatchToProps(Dash.noop)).toEqual({
		onClick = expect.any("function"),
	})
end)

describe("ContactImporterWarningTooltipContainer", function()
	beforeAll(function(c)
		FriendsNetworking.GetFriendRequests.Mock.clear()
	end)

	afterEach(function()
		FriendsNetworking.GetFriendRequests.Mock.clear()
	end)

	if not getFFlagShowContactImporterTooltipOnce() then
		it(
			"SHOULD show tooltip if there are contactImporterFriendRequests and seenContactImporterFriendRequest is false",
			function()
				local analytics = {
					navigate = jest.fn(),
					buttonClick = jest.fn(),
					impressionEvent = jest.fn(),
				}
				local instance, cleanup =
					createInstanceWithProviders(mockLocale)(ContactImporterWarningTooltipContainer.Component, {
						store = Rodux.Store.new(function()
							return showContactImporterWarningState
						end, nil),
						analytics = analytics,
						props = {
							appStorageService = MockAppStorageService.new({
								[Constants.TOOLTIP_APP_STORAGE_KEY] = "true",
							}),
						},
					})

				local tooltip = RhodiumHelpers.findFirstInstance(instance, {
					Name = TOOLTIP_NAME,
				})

				expect(tooltip).never.toBeNil()
				expect(analytics.impressionEvent).toHaveBeenCalledTimes(1)
				expect(analytics.impressionEvent).toHaveBeenCalledWith(analytics, ImpressionEvents.ContactWarningSeen)

				cleanup()
			end
		)
	end

	it("SHOULD not show tooltip if there are no contactImporterFriendRequests", function()
		local analytics = {
			navigate = jest.fn(),
			buttonClick = jest.fn(),
			impressionEvent = jest.fn(),
		}
		local instance, cleanup =
			createInstanceWithProviders(mockLocale)(ContactImporterWarningTooltipContainer.Component, {
				store = Rodux.Store.new(function()
					return noContactImporterFriendRequests
				end, nil),
				analytics = analytics,
				props = {
					appStorageService = MockAppStorageService.new({
						[Constants.TOOLTIP_APP_STORAGE_KEY] = "true",
					}),
				},
			})

		local tooltip = RhodiumHelpers.findFirstInstance(instance, {
			Name = TOOLTIP_NAME,
		})

		expect(tooltip).toBeNil()
		expect(analytics.impressionEvent).never.toHaveBeenCalled()

		cleanup()
	end)

	it("SHOULD return false if seenContactImporterFriendRequest is true", function()
		local instance, cleanup =
			createInstanceWithProviders(mockLocale)(ContactImporterWarningTooltipContainer.Component, {
				store = Rodux.Store.new(function()
					return seenContactImporterFriendRequestState
				end, nil),
				props = {
					appStorageService = MockAppStorageService.new({
						[Constants.TOOLTIP_APP_STORAGE_KEY] = "true",
					}),
				},
			})

		local tooltip = RhodiumHelpers.findFirstInstance(instance, {
			Name = TOOLTIP_NAME,
		})

		expect(tooltip).toBeNil()

		cleanup()
	end)

	if not getFFlagShowContactImporterTooltipOnce() then
		it("SHOULD call 'onClick' when pressed", function()
			local store = Rodux.Store.new(
				Rodux.combineReducers({
					[Constants.RODUX_KEY] = Rodux.combineReducers({
						ContactImporterWarning = contactImporterWarning,
					}),
				}),
				showContactImporterWarningState,
				{ Rodux.thunkMiddleware }
			)
			local instance, cleanup =
				createInstanceWithProviders(mockLocale)(ContactImporterWarningTooltipContainer.Component, {
					store = store,
					props = MockAppStorageService.new({
						[Constants.TOOLTIP_APP_STORAGE_KEY] = "true",
					}),
				})

			local tooltip = RhodiumHelpers.findFirstInstance(instance, {
				Name = TOOLTIP_NAME,
			})

			expect(tooltip).never.toBeNil()

			RhodiumHelpers.clickInstance(tooltip)

			waitUntil(function()
				return not RhodiumHelpers.findFirstInstance(instance, {
					Name = TOOLTIP_NAME,
				})
			end)

			local newTooltip = RhodiumHelpers.findFirstInstance(instance, {
				Name = TOOLTIP_NAME,
			})

			expect(newTooltip).toBeNil()
			cleanup()
		end)
	end
end)
