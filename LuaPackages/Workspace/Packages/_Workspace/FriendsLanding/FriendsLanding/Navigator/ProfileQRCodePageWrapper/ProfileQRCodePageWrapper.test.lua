local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local createInstanceWithProviders = require(FriendsLanding.TestHelpers.createInstanceWithProps)

local devDependencies = require(FriendsLanding.devDependencies)
local RhodiumHelpers = devDependencies.RhodiumHelpers
local mockLocale = devDependencies.UnitTestHelpers.mockLocale
local findImageSet = devDependencies.findImageSet

local FriendsLandingContext = require(FriendsLanding.FriendsLandingContext)
local dependencies = require(FriendsLanding.dependencies)
local Roact = dependencies.Roact
local Rodux = dependencies.Rodux
local RoactRodux = dependencies.RoactRodux
local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest
local ProfileQRCode = dependencies.ProfileQRCode

local ProfileQRCodePageWrapper = require(script.Parent)

describe("ProfileQRCodePageWrapper", function()
	local mockStore = Rodux.Store.new(function()
		return {
			ScreenSize = Vector2.new(1000, 500),
			LocalUserId = "0",
			[ProfileQRCode.RoduxKey] = {
				Users = {
					byUserId = {
						["0"] = {
							displayName = "mockDisplayName",
							username = "mockUserName",
						},
					},
				},
				NetworkStatus = {},
				ShareUrl = {
					shortUrl = "www.bbc.co.uk",
					linkId = "123456",
				},
			},
		}
	end, {}, { Rodux.thunkMiddleware })

	it("SHOULD mount and unmount without issue", function()
		local element = function()
			return Roact.createElement(FriendsLandingContext.Provider, {
				value = {
					robloxEventReceiver = {
						observeEvent = jest.fn(),
					},
				},
			}, {
				Element = Roact.createElement(RoactRodux.StoreProvider, {
					store = mockStore,
				}, {
					Roact.createElement(ProfileQRCodePageWrapper, {}),
				}),
			})
		end

		local _, cleanup = createInstanceWithProviders(mockLocale)(element, {})
		cleanup()
	end)

	it("SHOULD call navigation.goBack() when close button is pressed", function()
		local onCloseSpy = jest.fn()
		local element = function()
			return Roact.createElement(FriendsLandingContext.Provider, {
				value = {
					robloxEventReceiver = {
						observeEvent = jest.fn(),
					},
				},
			}, {
				Element = Roact.createElement(RoactRodux.StoreProvider, { store = mockStore }, {
					Roact.createElement(ProfileQRCodePageWrapper, {
						navigation = {
							goBack = function()
								onCloseSpy()
							end,
						},
					}),
				}),
			})
		end

		local parent, cleanup = createInstanceWithProviders(mockLocale)(element, {})
		local closeButton = RhodiumHelpers.findFirstInstance(parent, findImageSet("icons/navigation/close"))
		RhodiumHelpers.clickInstance(closeButton)

		expect(onCloseSpy).toHaveBeenCalled()

		cleanup()
	end)
end)
