--!nonstrict
local HttpService = game:GetService("HttpService")
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local Modules = CoreGui.RobloxGui.Modules

local Roact = require(CorePackages.Packages.Roact)
local UnitTestHelpers = require(CorePackages.Workspace.Packages.UnitTestHelpers)
local Rodux = require(CorePackages.Packages.Rodux)
local Rhodium = require(CorePackages.Packages.Dev.Rhodium)

local InspectAndBuyModules = Modules.InspectAndBuy
local rootReducer = require(InspectAndBuyModules.Reducers.InspectAndBuyReducer)
local InspectAndBuy = require(InspectAndBuyModules.Components.InspectAndBuy)
local MockNetwork = require(InspectAndBuyModules.Test.MockNetwork)

-- robloxOwned indicates whether inspect and buy items are roblox authored
return function(notRobloxAuthored)
	local store = Rodux.Store.new(rootReducer, nil, { Rodux.thunkMiddleware })

	local inspectAndBuyComponent = Roact.createElement("ScreenGui", {
		ResetOnSpawn = false,
		IgnoreGuiInset = true,
		DisplayOrder = 1,
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		AutoLocalize = false,
		[Roact.Change.AbsoluteSize] = function(rbx) end,
	}, {
		inspectAndBuy = UnitTestHelpers.createStyleProvider({
			inspectAndBuy = Roact.createElement(InspectAndBuy, {
				humanoidDescription = MockNetwork.GetMockHumanoidDescription(),
				ctx = "escapeMenu",
				network = MockNetwork.new(false, notRobloxAuthored),
			}),
		}),
	})

	local instanceName = "Test-" .. HttpService:GenerateGUID(false)
	local handle = Roact.mount(inspectAndBuyComponent, CoreGui, instanceName)

	local path = ("game.CoreGui.%s"):format(instanceName)

	local gamepad = Rhodium.VirtualInput.GamePad.new()

	-- lute-lint-ignore(noNestedReactDefinitions)
	local cleanup = function()
		Roact.unmount(handle)
		gamepad:disconnect()
	end

	return path, store, cleanup, gamepad
end
