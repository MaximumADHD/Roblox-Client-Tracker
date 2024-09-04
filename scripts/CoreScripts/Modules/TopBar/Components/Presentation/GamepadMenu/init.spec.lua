--!strict
return function()
	local CorePackages = game:GetService("CorePackages")
	local CoreGui = game:GetService("CoreGui")
	local AppStorageService = game:GetService("AppStorageService")

	local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals)
	local expect = JestGlobals.expect
	local React = require(CorePackages.Packages.React)
	local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
	local Rodux = require(CorePackages.Packages.Rodux)
	local RoactRodux = require(CorePackages.RoactRodux)
	local LocalizationProvider = require(CorePackages.Workspace.Packages.Localization).LocalizationProvider
	local Localization = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization
	local UIBlox = require(CorePackages.UIBlox)
	local DesignTokenProvider = require(CorePackages.Workspace.Packages.Style).DesignTokenProvider

	local MenuNavigationPromptTokenMapper =
		require(script.Parent.Parent.Parent.Parent.TokenMappers.MenuNavigationPromptTokenMapper)
	local GamepadMenu = require(script.Parent.Parent.GamepadMenu)

	local RobloxAppEnums = require(CorePackages.Workspace.Packages.RobloxAppEnums)
	local Reducer = require(script.Parent.Parent.Parent.Parent.Reducer)
	local Components = script.Parent.Parent.Parent
	local Actions = Components.Parent.Actions
	local SetGamepadMenuOpen = require(Actions.SetGamepadMenuOpen)
	local SetScreenSize = require(Actions.SetScreenSize)

	local defaultStyle = {
		themeName = "dark",
		fontName = "gotham",
		deviceType = RobloxAppEnums.DeviceType.Console,
	}

	local store

	beforeEach(function()
		store = Rodux.Store.new(Reducer, {}, {
			Rodux.thunkMiddleware,
		})

		store:dispatch(SetGamepadMenuOpen(true))
		store:dispatch(SetScreenSize(Vector2.new(1920, 1080)))
	end)
end
