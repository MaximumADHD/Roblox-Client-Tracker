local CorePackages = game:GetService("CorePackages")
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local it = JestGlobals.it
local Roact = require(CorePackages.Packages.Roact)
local Rodux = require(CorePackages.Packages.Rodux)
local Signal = require(CorePackages.Workspace.Packages.AppCommonLib).Signal

local InspectAndBuyFolder = script.Parent.Parent
local TestContainer = require(InspectAndBuyFolder.Test.TestContainer)
local InspectAndBuyBaseContainer = require(script.Parent.InspectAndBuyBaseContainer)
local mockModel = require(InspectAndBuyFolder.Test.getMockModel)()

local Localization = require(CorePackages.Workspace.Packages.Localization)
local LocalizationProvider = Localization.LocalizationProvider

local function createMockLocalization()
	return {
		Format = function(_, key: string, _): string
			return key
		end,
		GetLocale = function(): string
			return "en-us"
		end,
		changed = Signal.new(),
	}
end

local function createMockAnalytics()
	return {
		reportPurchaseSuccess = function(_itemType: string, _itemId: string) end,
		reportTryOnButtonClicked = function(_itemType: string, _itemId: string) end,
	}
end

local function createMockStore()
	local initialState = {
		view = 1,
		playerId = "123",
		playerName = "TestPlayer",
		avatarPreviewDetails = {
			items = {},
			totalPrice = 0,
			totalValue = 0,
		},
		assets = {},
		bundles = {},
		assetBundles = {},
		equippedAssets = {},
		detailsInformation = {},
		tryingOnInfo = {},
		favorites = {
			assets = {},
			bundles = {},
		},
		locale = "en-us",
		visible = true,
		itemBeingPurchased = nil,
		gamepadEnabled = false,
		isLoaded = true,
		isSubjectToChinaPolicies = false,
		FetchingStatus = {},
		storeId = nil,
		collectibleResellableInstances = {},
		creatingExperiences = {},
		overlay = {},
	}

	return Rodux.Store.new(function(state)
		return state or initialState
	end, initialState, { Rodux.thunkMiddleware })
end

it("InspectAndBuyBaseContainer should create and destroy without errors", function()
	local element = Roact.createElement(LocalizationProvider, {
		localization = createMockLocalization(),
	}, {
		TestContainer = Roact.createElement(TestContainer, {
			overrideStore = createMockStore(),
		}, {
			Roact.createElement(
				InspectAndBuyBaseContainer,
				{
					localPlayerModel = mockModel,
					analytics = createMockAnalytics(),
				} :: any
			),
		}),
	})

	local instance = Roact.mount(element)
	Roact.unmount(instance)
end)

it("InspectAndBuyBaseContainer should create and destroy without errors when localPlayerModel is nil", function()
	local element = Roact.createElement(LocalizationProvider, {
		localization = createMockLocalization(),
	}, {
		TestContainer = Roact.createElement(TestContainer, {
			overrideStore = createMockStore(),
		}, {
			Roact.createElement(
				InspectAndBuyBaseContainer,
				{
					localPlayerModel = nil,
					analytics = createMockAnalytics(),
				} :: any
			),
		}),
	})

	local instance = Roact.mount(element)
	Roact.unmount(instance)
end)
