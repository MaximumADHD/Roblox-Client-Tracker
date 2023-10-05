--!nonstrict
local HttpService = game:GetService("HttpService")
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local Modules = CoreGui.RobloxGui.Modules
local LocalizationService = game:GetService("LocalizationService")

local Roact = require(CorePackages.Roact)
local Rodux = require(CorePackages.Rodux)
local RoactRodux = require(CorePackages.RoactRodux)
local Cryo = require(CorePackages.Cryo)
local UIBlox = require(CorePackages.UIBlox)
local Rhodium = require(CorePackages.Rhodium)
local RobloxAppEnums = require(CorePackages.Workspace.Packages.RobloxAppEnums)
local DesignTokenProvider = require(CorePackages.Workspace.Packages.Style).DesignTokenProvider
local LocalizationProvider = require(CorePackages.Workspace.Packages.Localization).LocalizationProvider
local Localization = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization

local defaultStyle = {
	themeName = "dark",
	fontName = "gotham",
	deviceType = RobloxAppEnums.DeviceType.Console,
}

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

			local localization = Localization.new("en-us")

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
						LocalizationProvider = Roact.createElement(LocalizationProvider, {
              localization = localization,
            }, {
							StyleProvider = Roact.createElement(UIBlox.App.Style.AppStyleProvider, {
								style = defaultStyle,
							}, {
								DesignTokenProvider = Roact.createElement(DesignTokenProvider, {
									tokenMappers = {}
								}, {
									[config.key] = Roact.createElement(config.component, config.props),
								}),
							})
						}),
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
