--!nonstrict
local HttpService = game:GetService("HttpService")
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local Modules = CoreGui.RobloxGui.Modules

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local Rodux = require(CorePackages.Rodux)
local Rhodium = require(CorePackages.Rhodium)

local InspectAndBuyModules = Modules.InspectAndBuy
local rootReducer = require(InspectAndBuyModules.Reducers.InspectAndBuyReducer)
local InspectAndBuy = require(InspectAndBuyModules.Components.InspectAndBuy)
local MockNetwork = require(InspectAndBuyModules.Test.MockNetwork)

return function()
	beforeAll(function(c)
		-- robloxOwned indicates whether inspect and buy items are roblox authored
		c.mountInspectMenu = function(notRobloxAuthored)
			local store = Rodux.Store.new(rootReducer, nil, { Rodux.thunkMiddleware })

			local inspectAndBuyComponent = Roact.createElement("ScreenGui",
				{
					ResetOnSpawn = false,
					IgnoreGuiInset = true,
					DisplayOrder = 1,
					ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
					AutoLocalize = false,
					[Roact.Change.AbsoluteSize] = function(rbx)
					end
				}, {
				inspectAndBuy = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
					inspectAndBuy = Roact.createElement(InspectAndBuy, {
						humanoidDescription = MockNetwork.GetMockHumanoidDescription(),
						ctx = "escapeMenu",
						network = MockNetwork.new(false, notRobloxAuthored)
					})
				})}
			)

			local instanceName = "Test-" .. HttpService:GenerateGUID(false)
			local handle = Roact.mount(inspectAndBuyComponent, CoreGui, instanceName)

			local path = ("game.CoreGui.%s"):format(instanceName)

			local gamepad = Rhodium.VirtualInput.GamePad.new()

			local cleanup = function()
				Roact.unmount(handle)
				gamepad:disconnect()
			end

			return path, store, cleanup, gamepad
		end
	end)

	afterEach(function()
		-- Making sure we switch back to kyboard input (which is the default) after running tests
		-- (so we prevent gamepad tests from influencing keyboard tests relying on that assumption)
		-- In gamepad tests we are already always sending an initial input
		Rhodium.VirtualInput.Keyboard.hitKey(Enum.KeyCode.RightSuper)
		Rhodium.VirtualInput.waitForInputEventsProcessed()
	end)
end
