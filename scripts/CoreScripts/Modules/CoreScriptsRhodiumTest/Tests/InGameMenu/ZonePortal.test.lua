--!nonstrict
local CorePackages = game:GetService("CorePackages")
local Modules = game:GetService("CoreGui").RobloxGui.Modules
local GuiService = game:GetService("GuiService")

local Rhodium = require(CorePackages.Packages.Dev.Rhodium)
local Element = Rhodium.Element
local XPath = Rhodium.XPath

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local expect = JestGlobals.expect

local InGameMenu = Modules.InGameMenu
local ZonePortal = require(InGameMenu.Components.ZonePortal)
local Direction = require(InGameMenu.Enums.Direction)
local mountIGM = require(Modules.CoreScriptsRhodiumTest.TestHelpers["mountIGM.test"])

local c

beforeEach(function()
	c = {}
	c.path, c.store, c.cleanup, c.gamepad = mountIGM({
		key = "ZonePortal",
		component = ZonePortal,
		props = {
			targetZone = 999,
			direction = Direction.Up,
		},
	})
end)

afterEach(function()
	c.cleanup()
end)

it("should set the target zone when selected", function()
	local path = c.path
	local store = c.store

	expect(store:getState().currentZone).toBeNil()

	local rootPath = XPath.new(path)
	local zonePortalPath = rootPath:cat(XPath.new("ZonePortal"))
	local zonePortal = Element.new(zonePortalPath)

	expect(zonePortal:waitForRbxInstance(1)).never.toBeNil()

	GuiService.SelectedCoreObject = zonePortal:getRbxInstance()

	wait()

	expect(store:getState().currentZone).toBe(999)
end)
