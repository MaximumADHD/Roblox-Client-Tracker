--!nonstrict
local HttpService = game:GetService("HttpService")
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local Modules = CoreGui.RobloxGui.Modules

local Roact = require(CorePackages.Roact)
local Rodux = require(CorePackages.Rodux)
local RoactRodux = require(CorePackages.RoactRodux)
local Cryo = require(CorePackages.Cryo)
local UIBlox = require(CorePackages.UIBlox)
local Rhodium = require(CorePackages.Rhodium)

local TopBar = Modules.TopBar
local Reducer = require(TopBar.Reducer)
local TopBarAppPolicy = require(TopBar.TopBarAppPolicy)
local SetScreenSize = require(TopBar.Actions.SetScreenSize)

local registerSetCores = require(TopBar.registerSetCores)

return function()
	beforeAll(function(c)
		c.mountTopBar = function(overrideConfig)
			local defaultConfig = {
				key = "TopBar",
				component = Roact.createElement("Frame"),
				props = nil,
				policyData = nil,
			}

			local config = Cryo.Dictionary.join(defaultConfig, overrideConfig or {})

			local store = Rodux.Store.new(Reducer, nil, { Rodux.thunkMiddleware })
			registerSetCores(store)

			local root = Roact.createElement("ScreenGui",
			{
				ResetOnSpawn = false,
				IgnoreGuiInset = true,
				DisplayOrder = 1,
				ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
				AutoLocalize = false,
				[Roact.Change.AbsoluteSize] = function(rbx)
					store:dispatch(SetScreenSize(rbx.AbsoluteSize))
				end
			}, {
				TopBar = Roact.createElement(RoactRodux.StoreProvider, {
					store = store,
				}, {
					PolicyProvider = Roact.createElement(TopBarAppPolicy.Provider, {
						policy = { TopBarAppPolicy.Mapper },
					}, {
						ThemeProvider = Roact.createElement(UIBlox.Style.Provider, {}, {
							[config.key] = Roact.createElement(config.component, config.props),
						})
					})
				})
			})

			local instanceName = "Test-" .. HttpService:GenerateGUID(false)
			local handle = Roact.mount(root, CoreGui, instanceName)

			local path = ("game.CoreGui.%s"):format(instanceName)

			local gamepad = Rhodium.VirtualInput.GamePad.new()

			local cleanup = function()
				for _, child in ipairs(CoreGui:GetChildren()) do
					if child.Name == "QuickMenuControllerBar" then
						child:Destroy()
					end
				end
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
