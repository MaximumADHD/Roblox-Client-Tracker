local ChromeService = require(script.Parent.ChromeService)
local ChromeUtils = require(script.Parent.ChromeUtils)
local CorePackages = game:GetService("CorePackages")

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local expect = JestGlobals.expect
local describe = JestGlobals.describe
local it = JestGlobals.it
local jest = JestGlobals.jest
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach

local function setupMockIntegration(service: ChromeService.ChromeService, id: string, hasWindow: boolean)
	local availability = ChromeUtils.AvailabilitySignal.new(ChromeService.AvailabilitySignal.Available)
	service._integrations[id] = {
		id = id,
		label = id,
		initialAvailability = ChromeService.AvailabilitySignal.Available,
		components = {
			Icon = function() end,
			Window = if hasWindow then function() end else nil,
		},
		availability = availability,
		notification = ChromeUtils.NotifySignal.new(),
		hideNotificationCountWhileOpen = false,
	} :: any
end

local function openWindow(service: ChromeService.ChromeService, id: string)
	service._integrationsStatus[id] = ChromeService.IntegrationStatus.Window
end

describe("Unibar Layout Signal", function()
	it("non-null initial values", function()
		local chromeService: ChromeService.ChromeService = ChromeService.new()
		local layoutSignal = chromeService:layout()
		local layout = layoutSignal:get()

		expect(layoutSignal)
		expect(layout)
	end)

	it("sends update signals", function()
		local chromeService: ChromeService.ChromeService = ChromeService.new()
		local layoutSignal = chromeService:layout()

		local layoutValue
		layoutSignal:connect(function(layout)
			layoutValue = layout
		end)

		chromeService:setMenuAbsolutePosition(Vector2.new(100, 200))

		expect(layoutValue)
		expect(layoutValue.Min.X).toBe(100)
		expect(layoutValue.Min.Y).toBe(200)
	end)

	it("sends minimal signal updates", function()
		local chromeService: ChromeService.ChromeService = ChromeService.new()
		local layoutSignal = chromeService:layout()

		local count = 0
		layoutSignal:connect(function(layout)
			count = count + 1
		end)

		chromeService:setMenuAbsolutePosition(Vector2.new(100, 200))
		chromeService:setMenuAbsolutePosition(Vector2.new(100, 200))
		chromeService:setMenuAbsolutePosition(Vector2.new(100, 200))
		expect(count).toBe(1)

		chromeService:setMenuAbsolutePosition(Vector2.new(200, 200))
		chromeService:setMenuAbsolutePosition(Vector2.new(200, 200))
		expect(count).toBe(2)

		chromeService:setMenuAbsoluteSize(Vector2.new(1000, 1000))
		chromeService:setMenuAbsoluteSize(Vector2.new(1000, 1000))
		expect(count).toBe(3)
	end)

	it("correctly calculated Rect", function()
		local chromeService: ChromeService.ChromeService = ChromeService.new()
		local layoutSignal = chromeService:layout()

		chromeService:setMenuAbsolutePosition(Vector2.new(100, 200))
		chromeService:setMenuAbsoluteSize(Vector2.new(1000, 50))

		local layout = layoutSignal:get()
		expect(layout.Width).toBe(1000)
		expect(layout.Min.X).toBe(100)
		expect(layout.Min.Y).toBe(200)
	end)
end)

describe("updateMenuList", function()
	it("SHOULD include open windows from menu config in windowList", function()
		local service: ChromeService.ChromeService = ChromeService.new()
		setupMockIntegration(service, "integration1", true)
		openWindow(service, "integration1")
		service._menuConfig = { "integration1" } :: any
		service:updateMenuList()

		local windowList = service:windowList():get()
		expect(#windowList).toBe(1)
		expect(windowList[1].id).toBe("integration1")
	end)

	it("SHOULD NOT include closed windows in windowList", function()
		local service: ChromeService.ChromeService = ChromeService.new()
		setupMockIntegration(service, "integration1", true)
		service._menuConfig = { "integration1" } :: any
		service:updateMenuList()

		local windowList = service:windowList():get()
		expect(#windowList).toBe(0)
	end)

	it("SHOULD NOT include integrations without windows in windowList", function()
		local service: ChromeService.ChromeService = ChromeService.new()
		setupMockIntegration(service, "integration1", false)
		service._menuConfig = { "integration1" } :: any
		service:updateMenuList()

		local windowList = service:windowList():get()
		expect(#windowList).toBe(0)
	end)

	it("SHOULD include menu config integrations in menuList", function()
		local service: ChromeService.ChromeService = ChromeService.new()
		setupMockIntegration(service, "integration1", true)
		service._menuConfig = { "integration1" } :: any
		service:updateMenuList()

		local menuList = service:menuList():get()
		expect(#menuList).toBe(1)
		expect(menuList[1].id).toBe("integration1")
	end)
end)

describe("updateMenuList with FFlagEnableChromeWindowsNotInMenu", function()
	local FlagChromeService
	local FlagChromeUtils

	beforeEach(function()
		game:SetFastFlagForTesting("EnableChromeWindowsNotInMenu", true)
		jest.resetModules()
		local UIBlox = require(CorePackages.Packages.UIBlox)
		UIBlox.init(require(CorePackages.Workspace.Packages.RobloxAppUIBloxConfig))
		FlagChromeService = require(script.Parent.ChromeService)
		FlagChromeUtils = require(script.Parent.ChromeUtils)
	end)

	afterEach(function()
		game:SetFastFlagForTesting("EnableChromeWindowsNotInMenu", false)
	end)

	it("SHOULD include open windows NOT in menu config when flag is enabled", function()
		local service = FlagChromeService.new()

		local function setupFlagIntegration(svc, id: string, hasWindow: boolean)
			local availability = FlagChromeUtils.AvailabilitySignal.new(FlagChromeService.AvailabilitySignal.Available)
			svc._integrations[id] = {
				id = id,
				label = id,
				initialAvailability = FlagChromeService.AvailabilitySignal.Available,
				components = {
					Icon = function() end,
					Window = if hasWindow then function() end else nil,
				},
				availability = availability,
				notification = FlagChromeUtils.NotifySignal.new(),
				hideNotificationCountWhileOpen = false,
			} :: any
		end

		setupFlagIntegration(service, "inMenu", true)
		setupFlagIntegration(service, "notInMenu", true)
		service._integrationsStatus["inMenu"] = FlagChromeService.IntegrationStatus.Window
		service._integrationsStatus["notInMenu"] = FlagChromeService.IntegrationStatus.Window
		service._menuConfig = { "inMenu" } :: any
		service:updateMenuList()

		local windowList = service:windowList():get()
		expect(#windowList).toBe(2)

		local ids = {}
		for _, w in windowList do
			ids[w.id] = true
		end
		expect(ids["inMenu"]).toBe(true)
		expect(ids["notInMenu"]).toBe(true)
	end)

	it("SHOULD NOT duplicate windows already in menu config when flag is enabled", function()
		local service = FlagChromeService.new()

		local availability = FlagChromeUtils.AvailabilitySignal.new(FlagChromeService.AvailabilitySignal.Available)
		service._integrations["integration1"] = {
			id = "integration1",
			label = "integration1",
			initialAvailability = FlagChromeService.AvailabilitySignal.Available,
			components = {
				Icon = function() end,
				Window = function() end,
			},
			availability = availability,
			notification = FlagChromeUtils.NotifySignal.new(),
			hideNotificationCountWhileOpen = false,
		} :: any
		service._integrationsStatus["integration1"] = FlagChromeService.IntegrationStatus.Window
		service._menuConfig = { "integration1" } :: any
		service:updateMenuList()

		local windowList = service:windowList():get()
		expect(#windowList).toBe(1)
		expect(windowList[1].id).toBe("integration1")
	end)
end)
