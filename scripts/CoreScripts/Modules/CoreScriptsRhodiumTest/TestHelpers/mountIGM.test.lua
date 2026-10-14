--!nonstrict
local HttpService = game:GetService("HttpService")
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local Modules = CoreGui.RobloxGui.Modules
local LocalizationService = game:GetService("LocalizationService")

local InGameMenuDependencies = require(CorePackages.Packages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local UnitTestHelpers = require(CorePackages.Workspace.Packages.UnitTestHelpers)
local Cryo = InGameMenuDependencies.Cryo

local RoactRodux = require(CorePackages.Packages.RoactRodux)
local Rodux = require(CorePackages.Packages.Rodux)
local Rhodium = require(CorePackages.Packages.Dev.Rhodium)

local InGameMenu = Modules.InGameMenu
local bindMenuActions = require(InGameMenu.SetupFunctions.bindMenuActions)
local SetScreenSize = require(InGameMenu.Actions.SetScreenSize)
local Localization = require(InGameMenu.Localization.Localization)
local LocalizationProvider = require(InGameMenu.Localization.LocalizationProvider)
local App = require(InGameMenu.Components.App)
local rootReducer = require(InGameMenu.reducer)
local InGameMenuPolicy = require(InGameMenu.InGameMenuPolicy)
local FocusHandlerContextProvider =
	require(InGameMenu.Components.Connection.FocusHandlerUtils.FocusHandlerContextProvider)

local Flags = InGameMenu.Flags
local GetFFlagIGMGamepadSelectionHistory = require(Flags.GetFFlagIGMGamepadSelectionHistory)

return function(overrideConfig)
	local defaultConfig = {
		key = "InGameMenu",
		component = App,
		props = nil,
		policyData = nil,
	}

	local config = Cryo.Dictionary.join(defaultConfig, overrideConfig or {})

	local localization = Localization.new(LocalizationService.RobloxLocaleId)
	local store = Rodux.Store.new(rootReducer, nil, { Rodux.thunkMiddleware })
	bindMenuActions(store)

	local children = nil -- can inline when removing flag
	if GetFFlagIGMGamepadSelectionHistory() then
		children = {
			FocusHandlerContextProvider = Roact.createElement(FocusHandlerContextProvider, {}, {
				[config.key] = Roact.createElement(config.component, config.props),
			}),
		}
	else
		children = {
			[config.key] = Roact.createElement(config.component, config.props),
		}
	end

	local igmComponent = Roact.createElement("ScreenGui", {
		ResetOnSpawn = false,
		IgnoreGuiInset = true,
		DisplayOrder = 1,
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		AutoLocalize = false,
		[Roact.Change.AbsoluteSize] = function(rbx)
			store:dispatch(SetScreenSize(rbx.AbsoluteSize))
		end,
	}, {
		InGameMenu = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			Root = Roact.createElement(InGameMenuPolicy.Provider, {
				policy = { InGameMenuPolicy.Mapper },
				policyData = config.policyData,
			}, {
				ThemeProvider = UnitTestHelpers.createStyleProvider({
					LocalizationProvider = Roact.createElement(LocalizationProvider, {
						localization = localization,
					}, children),
				}),
			}),
		}),
	})

	local instanceName = "Test-" .. HttpService:GenerateGUID(false)
	local handle = Roact.mount(igmComponent, CoreGui, instanceName)

	local path = ("game.CoreGui.%s"):format(instanceName)

	local gamepad = Rhodium.VirtualInput.GamePad.new()

	-- lute-lint-ignore(noNestedReactDefinitions)
	local cleanup = function()
		Roact.unmount(handle)
		gamepad:disconnect()
	end

	return path, store, cleanup, gamepad
end
