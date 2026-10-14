--!nonstrict
local HttpService = game:GetService("HttpService")
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local Modules = CoreGui.RobloxGui.Modules

local Roact = require(CorePackages.Packages.Roact)
local Rodux = require(CorePackages.Packages.Rodux)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local Cryo = require(CorePackages.Packages.Cryo)
local UIBlox = require(CorePackages.Packages.UIBlox)
local Rhodium = require(CorePackages.Packages.Dev.Rhodium)
local RobloxAppEnums = require(CorePackages.Workspace.Packages.RobloxAppEnums)
local DesignTokenProvider = require(CorePackages.Workspace.Packages.Style).DesignTokenProvider
local LocalizationProvider = require(CorePackages.Workspace.Packages.Localization).LocalizationProvider
local Localization = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization
local UniversalAppPolicy = require(CorePackages.Workspace.Packages.UniversalAppPolicy)
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local RoactAppPolicy = UniversalAppPolicy.RoactAppPolicy
local AppFeaturePolicies = UniversalAppPolicy.AppFeaturePolicies

local defaultStyle = {
	themeName = "dark",
	fontName = "gotham",
	deviceType = RobloxAppEnums.DeviceType.Console,
}

local TopBar = Modules.TopBar
local Reducer = require(TopBar.Reducer)
local TopBarAppPolicy = require(TopBar.TopBarAppPolicy)
local SetScreenSize = require(TopBar.Actions.SetScreenSize)

local CoreGuiCommon = require(CorePackages.Workspace.Packages.CoreGuiCommon)
local InExperienceTopBar = require(CorePackages.Workspace.Packages.InExperienceTopBar)
local FFlagTopBarSignalizeSetCores = InExperienceTopBar.Flags.FFlagTopBarSignalizeSetCores
local FFlagTopBarSignalizeScreenSize = CoreGuiCommon.Flags.FFlagTopBarSignalizeScreenSize
local FFlagShowGameAgeRating = SharedFlags.FFlagShowGameAgeRating

local registerSetCores = require(TopBar.registerSetCores)

return function(overrideConfig)
	local defaultConfig = {
		key = "TopBar",
		component = Roact.createElement("Frame"),
		props = nil,
		policyData = nil,
	}

	local config = Cryo.Dictionary.join(defaultConfig, overrideConfig or {})

	local store = Rodux.Store.new(Reducer, nil, { Rodux.thunkMiddleware })
	if not FFlagTopBarSignalizeSetCores then
		registerSetCores(store)
	end

	local localization = Localization.new("en-us")

	local root = Roact.createElement("ScreenGui", {
		ResetOnSpawn = false,
		IgnoreGuiInset = true,
		DisplayOrder = 1,
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		AutoLocalize = false,
		[Roact.Change.AbsoluteSize] = if FFlagTopBarSignalizeScreenSize
			then nil
			else function(rbx)
				store:dispatch(SetScreenSize(rbx.AbsoluteSize))
			end,
	}, {
		TopBar = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			PolicyProvider = Roact.createElement(
				if FFlagShowGameAgeRating then RoactAppPolicy.Provider else TopBarAppPolicy.Provider,
				{
					policy = if FFlagShowGameAgeRating then { AppFeaturePolicies } else { TopBarAppPolicy.Mapper },
				},
				{
					LocalizationProvider = Roact.createElement(LocalizationProvider, {
						localization = localization,
					}, {
						StyleProvider = Roact.createElement(UIBlox.App.Style.AppStyleProvider, {
							style = defaultStyle,
						}, {
							DesignTokenProvider = Roact.createElement(DesignTokenProvider, {
								tokenMappers = {},
							}, {
								[config.key] = Roact.createElement(config.component, config.props),
							}),
						}),
					}),
				}
			),
		}),
	})

	local instanceName = "Test-" .. HttpService:GenerateGUID(false)
	local handle = Roact.mount(root, CoreGui, instanceName)

	local path = ("game.CoreGui.%s"):format(instanceName)

	local gamepad = Rhodium.VirtualInput.GamePad.new()

	-- lute-lint-ignore(noNestedReactDefinitions)
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
