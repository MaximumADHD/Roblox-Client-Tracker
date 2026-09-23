local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local afterAll = JestGlobals.afterAll
local beforeEach = JestGlobals.beforeEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local ChromePackage = require(CorePackages.Workspace.Packages.Chrome)

local UNAVAILABLE = 0
local AVAILABLE = 2
local PIONEER = "Pioneer"

local pioneerLaunch = true
local isPioneerLaunchMock = jest.fn(function()
	return pioneerLaunch
end)
local eligibilityGranted = false
local getAvailabilityMock = jest.fn(function()
	return {
		granted = eligibilityGranted,
		access = if eligibilityGranted then "Granted" else "Denied",
	}
end)
local availableMock = jest.fn()
local spawnedTask: (() -> ())? = nil
local spawnSpy = jest.spyOn(task, "spawn").mockImplementation(function(callback)
	spawnedTask = callback
	return nil :: any
end)
local mountStatus = "mounted"
local mountMock = jest.fn(function()
	return mountStatus
end)
local unmountMock = jest.fn()
local unavailableMock = jest.fn()

local registeredDefinition: ChromePackage.IntegrationRegisterProps? = nil
local registerMock = jest.fn(function(_self, definition)
	registeredDefinition = definition
	return {
		availability = {
			available = availableMock,
			unavailable = unavailableMock,
		},
	}
end)
local AccountUpsellMock = function()
	return nil
end

jest.mock(Chrome.Service, function()
	return {
		AvailabilitySignal = {
			Available = AVAILABLE,
			Unavailable = UNAVAILABLE,
		},
		register = registerMock,
	}
end)

jest.mock(CorePackages.Workspace.Packages.PioneerUtils, function()
	return {
		isPioneerLaunch = isPioneerLaunchMock,
	}
end)

jest.mock(CorePackages.Workspace.Packages.AccountUpgrade, function()
	return {
		AccountUpgradeFlow = {
			Pioneer = PIONEER,
		},
		Eligibility = {
			getAvailability = getAvailabilityMock,
		},
		InExperienceController = {
			mount = mountMock,
			unmount = unmountMock,
		},
	}
end)

jest.mock(CorePackages.Workspace.Packages.InExperienceSideSheet, function()
	return {
		AccountUpsell = AccountUpsellMock,
	}
end)

local function loadAccountUpsell(isPioneer: boolean)
	pioneerLaunch = isPioneer
	jest.resetModules()
	return require(script.Parent.AccountUpsell)
end

local function getAccountUpsellWidget()
	local definition = assert(registeredDefinition, "Account upsell should register an integration")
	local components = assert(definition.components, "Account upsell should register components")
	return assert(components.Widget, "Account upsell should register a widget")
end

local function activateAccountUpsell()
	local Widget = getAccountUpsellWidget()
	local widgetElement = Widget({
		layoutOrder = 3,
		placement = ChromePackage.Enums.SideSheetPlacement.ScrollableContentBottom,
	}) :: any
	widgetElement.props.onActivated()
end

describe("AccountUpsell", function()
	afterAll(function()
		spawnSpy:mockRestore()
	end)

	beforeEach(function()
		eligibilityGranted = false
		registeredDefinition = nil
		spawnedTask = nil
		mountStatus = "mounted"
		registerMock:mockClear()
		getAvailabilityMock:mockClear()
		availableMock:mockClear()
		mountMock:mockClear()
		unmountMock:mockClear()
		unavailableMock:mockClear()
	end)

	it("SHOULD register the widget as unavailable through Chrome", function()
		loadAccountUpsell(true)

		expect(registerMock).toHaveBeenCalledTimes(1)
		expect(registeredDefinition).toEqual(expect.objectContaining({
			id = "AccountUpsell",
			initialAvailability = UNAVAILABLE,
			sideSheetPlacement = ChromePackage.Enums.SideSheetPlacement.ScrollableContentBottom,
			components = expect.objectContaining({
				Widget = expect.any("function"),
			}),
		}))
	end)

	it("SHOULD request AMP eligibility for the Pioneer flow", function()
		loadAccountUpsell(true)

		assert(spawnedTask)()

		expect(getAvailabilityMock).toHaveBeenCalledWith(PIONEER)
	end)

	it("SHOULD make the widget available when AMP grants eligibility", function()
		eligibilityGranted = true
		loadAccountUpsell(true)

		assert(spawnedTask)()

		expect(availableMock).toHaveBeenCalledTimes(1)
	end)

	it("SHOULD keep the widget unavailable when AMP denies eligibility", function()
		loadAccountUpsell(true)

		assert(spawnedTask)()

		expect(availableMock).never.toHaveBeenCalled()
	end)

	it("SHOULD adapt the Chrome widget props for the account upsell component", function()
		loadAccountUpsell(true)

		local Widget = getAccountUpsellWidget()
		local widgetElement = Widget({
			layoutOrder = 3,
			placement = ChromePackage.Enums.SideSheetPlacement.ScrollableContentBottom,
		}) :: any

		expect(widgetElement.type).toBe(AccountUpsellMock)
		expect(widgetElement.props).toEqual(expect.objectContaining({
			layoutOrder = 3,
			placement = ChromePackage.Enums.SideSheetPlacement.ScrollableContentBottom,
			onActivated = expect.any("function"),
		}))
	end)

	it("SHOULD mount the Pioneer account upgrade flow when activated", function()
		loadAccountUpsell(true)

		activateAccountUpsell()

		expect(mountMock).toHaveBeenCalledWith(expect.objectContaining({
			flow = PIONEER,
			onComplete = expect.any("function"),
		}))
		expect(unmountMock).never.toHaveBeenCalled()
	end)

	it("SHOULD unmount the Pioneer account upgrade flow when it is already open", function()
		mountStatus = "already_mounted"
		loadAccountUpsell(true)

		activateAccountUpsell()

		expect(unmountMock).toHaveBeenCalledTimes(1)
	end)

	it("SHOULD hide the account upsell after a successful account upgrade", function()
		loadAccountUpsell(true)
		activateAccountUpsell()
		local mountOptions = mountMock.mock.calls[1][1]

		mountOptions.onComplete({
			reason = "success",
			result = {},
		})

		expect(unavailableMock).toHaveBeenCalledTimes(1)
	end)

	it("SHOULD keep the account upsell available when the user closes the flow", function()
		loadAccountUpsell(true)
		activateAccountUpsell()
		local mountOptions = mountMock.mock.calls[1][1]

		mountOptions.onComplete({
			reason = "user_closed",
		})

		expect(unavailableMock).never.toHaveBeenCalled()
	end)

	it("SHOULD not register the widget outside the Pioneer side sheet", function()
		loadAccountUpsell(false)

		expect(registerMock).never.toHaveBeenCalled()
	end)
end)
