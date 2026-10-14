--!nonstrict
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local InGameMenuDependencies = require(CorePackages.Packages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local Rodux = InGameMenuDependencies.Rodux
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local Store = require(CorePackages.Packages.Rodux).Store
local UnitTestHelpers = require(CorePackages.Workspace.Packages.UnitTestHelpers)
local ShareGame = RobloxGui.Modules.Settings.Pages.ShareGame
local Constants = require(ShareGame.Constants)
local dependencies = require(CorePackages.Workspace.Packages.NotificationsCommon).ReducerDependencies
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect
local jest = JestGlobals.jest
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local RhodiumHelpers = require(CorePackages.Workspace.Packages.RhodiumHelpers)
local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
local act = ReactRoblox.act

local ShareLinksNetworking = dependencies.ShareLinksNetworking

local ShareInviteLink = require(RobloxGui.Modules.Settings.Pages.ShareGame.Components.ShareInviteLink)
local STORE_URL = "www.bbc.co.uk"
local NETWORK_URL = "www.bbc.com"

local generateLink, mockAnalytics, externalContentSharingProtocol, makeTestElement

beforeEach(function()
	ShareLinksNetworking.GenerateLink.Mock.clear()

	generateLink = jest.fn()
	mockAnalytics = {
		onShareButtonClick = jest.fn(),
	}
	externalContentSharingProtocol = {
		shareUrl = jest.fn(),
		shareText = jest.fn(),
	}
	ShareLinksNetworking.GenerateLink.Mock.reply(function()
		generateLink()
		return {
			shortUrl = NETWORK_URL,
			linkId = "12345",
		}
	end)
	makeTestElement = function(state)
		local store = Store.new(function()
			return state
		end, {}, { Rodux.thunkMiddleware })
		local parentFrame = Instance.new("ScreenGui")
		parentFrame.Parent = game:GetService("CoreGui")

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			ShareInviteLink = UnitTestHelpers.createStyleProvider({
				ShareButton = Roact.createElement(ShareInviteLink, {
					deviceLayout = Constants.DeviceLayout.DESKTOP,
					analytics = mockAnalytics,
					externalContentSharingProtocol = externalContentSharingProtocol,
					isDesktopClient = false,
					size = UDim2.new(0, 500, 0, 500),
				}),
			}),
		})

		local instance = Roact.mount(element, parentFrame)

		return {
			parentFrame = parentFrame,
			instance = instance,
		}
	end
end)

afterEach(function()
	ShareLinksNetworking.GenerateLink.Mock.clear()
end)

it("should call fetchShareInviteLink on mount if there is no value in the store", function()
	local testingHelpers = makeTestElement({
		ShareLinks = {
			Invites = {},
		},
		NetworkStatus = {},
	})

	local shareButton = RhodiumHelpers.findFirstInstance(testingHelpers.parentFrame, {
		Name = "ShareButton",
	})
	expect(shareButton).never.toBeNil()

	act(function()
		RhodiumHelpers.clickInstance(shareButton)
		task.wait()
	end)

	Roact.unmount(testingHelpers.instance)

	expect(generateLink).toHaveBeenCalledTimes(1)
	expect(mockAnalytics.onShareButtonClick).toHaveBeenCalledTimes(1)
end)

it("should not fetchShareInviteLink on mount and should open the share sheet if url is in store", function()
	local testingHelpers = makeTestElement({
		ShareLinks = {
			Invites = {
				ShareInviteLink = {
					shortUrl = STORE_URL,
					id = "12345",
				},
			},
		},
		NetworkStatus = {},
	})

	local shareButton = RhodiumHelpers.findFirstInstance(testingHelpers.parentFrame, {
		Name = "ShareButton",
	})
	expect(shareButton).never.toBeNil()

	act(function()
		RhodiumHelpers.clickInstance(shareButton)
		task.wait()
	end)

	Roact.unmount(testingHelpers.instance)

	expect(generateLink).never.toHaveBeenCalled()
	expect(mockAnalytics.onShareButtonClick).toHaveBeenCalledTimes(1)

	expect(externalContentSharingProtocol.shareUrl).toHaveBeenCalledTimes(1)
	expect(externalContentSharingProtocol.shareUrl).toHaveBeenCalledWith(externalContentSharingProtocol, {
		url = STORE_URL,
		context = "V1Menu",
	})
end)
