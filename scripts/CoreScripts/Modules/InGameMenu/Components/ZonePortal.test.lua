local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local it = JestGlobals.it

local InGameMenuDependencies = require(CorePackages.Packages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local Rodux = InGameMenuDependencies.Rodux
local RoactRodux = InGameMenuDependencies.RoactRodux

local InGameMenu = script.Parent.Parent
local reducer = require(InGameMenu.reducer)
local Direction = require(InGameMenu.Enums.Direction)

local ZonePortal = require(script.Parent.ZonePortal)

local function getMountableTree(props, storeState)
	local store = Rodux.Store.new(reducer, storeState)

	return Roact.createElement(RoactRodux.StoreProvider, {
		store = store,
	}, {
		ZonePortal = Roact.createElement(ZonePortal, props),
	})
end

it("should create and destroy without errors", function()
	local element = getMountableTree({
		targetZone = 0,
		direction = Direction.Up,
	})
	local folder = Instance.new("Folder", CoreGui)
	local instance = Roact.mount(element, folder)
	Roact.unmount(instance)
end)
