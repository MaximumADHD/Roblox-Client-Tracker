--!nonstrict
local CorePackages = game:GetService("CorePackages")

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it

local InGameMenuDependencies = require(CorePackages.Packages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local Rodux = InGameMenuDependencies.Rodux

local InGameMenu = script.Parent.Parent.Parent
local reducer = require(InGameMenu.reducer)

local MouseOverrideManager = require(script.Parent.MouseOverrideManager)

local function getMountableTreeAndStore(props)
	local store = Rodux.Store.new(reducer)
	local element = Roact.createElement(RoactRodux.StoreProvider, {
		store = store,
	}, {
		MouseOverrideManager = Roact.createElement(MouseOverrideManager),
	})

	return element, store
end

describe("Mount/unmount", function()
	it("should create and destroy without errors", function()
		local element = getMountableTreeAndStore()

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end)
