local CorePackages = game:GetService("CorePackages")
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local it = JestGlobals.it
local expect = JestGlobals.expect
local jest = JestGlobals.jest
local beforeEach = JestGlobals.beforeEach
local Roact = require(CorePackages.Packages.Roact)
local Rodux = require(CorePackages.Packages.Rodux)
local Signals = require(CorePackages.Packages.Signals)
local Signal = require(CorePackages.Workspace.Packages.AppCommonLib).Signal
local AvatarExperienceFlags = require(CorePackages.Workspace.Packages.AvatarExperienceFlags)
local FFlagAXInspectAndBuyAvatarBackground = AvatarExperienceFlags.FFlagAXInspectAndBuyAvatarBackground

local mockGetBackground = Signals.createSignal({ assetId = 456 })
local mockRequestedUserIds = {}

jest.mock(CorePackages.Workspace.Packages.DataHydration.AvatarBackground, function()
	return {
		getAvatarBackgroundStore = function(_scope)
			return {
				getAndFetchAvatarBackground = function(userId)
					table.insert(mockRequestedUserIds, userId)
					return { data = mockGetBackground, status = mockGetBackground }
				end,
			}
		end,
		getAvatarBackgroundImageUrl = function(assetId: number): string
			return `image-for-{assetId}`
		end,
	}
end)

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

local function createMockStore(view: string?)
	local initialState = {
		view = view or 1,
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

local function mountContainer(playerId: number?): (any, Folder)
	local holder = Instance.new("Folder")
	local element = Roact.createElement(LocalizationProvider, {
		localization = createMockLocalization(),
	}, {
		TestContainer = Roact.createElement(TestContainer, {
			overrideStore = createMockStore("Wide"),
		}, {
			Roact.createElement(
				InspectAndBuyBaseContainer,
				{
					localPlayerModel = nil,
					analytics = createMockAnalytics(),
					playerId = playerId,
				} :: any
			),
		}),
	})
	return Roact.mount(element, holder), holder
end

local function hasImage(holder: Instance, image: string): boolean
	for _, descendant in holder:GetDescendants() do
		if descendant:IsA("ImageLabel") and (descendant :: ImageLabel).Image == image then
			return true
		end
	end
	return false
end

beforeEach(function()
	mockRequestedUserIds = {}
end)

if FFlagAXInspectAndBuyAvatarBackground then
	it("InspectAndBuyBaseContainer draws the inspected player's avatar background", function()
		local instance, holder = mountContainer(123)

		expect(mockRequestedUserIds[1]).toBe(123)
		expect(hasImage(holder, "image-for-456")).toBe(true)

		Roact.unmount(instance)
		holder:Destroy()
	end)

	it("InspectAndBuyBaseContainer skips the lookup when inspecting with no player", function()
		local instance, holder = mountContainer(nil)

		expect(#mockRequestedUserIds).toBe(0)
		expect(hasImage(holder, "image-for-456")).toBe(false)

		Roact.unmount(instance)
		holder:Destroy()
	end)
end

if not FFlagAXInspectAndBuyAvatarBackground then
	it("InspectAndBuyBaseContainer does not look up an avatar background", function()
		local instance, holder = mountContainer(123)

		expect(#mockRequestedUserIds).toBe(0)
		expect(hasImage(holder, "image-for-456")).toBe(false)

		Roact.unmount(instance)
		holder:Destroy()
	end)
end

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
