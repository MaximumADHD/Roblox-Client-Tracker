local CorePackages = game:GetService("CorePackages")
local AppDarkTheme = require(CorePackages.AppTempCommon.LuaApp.Style.Themes.DarkTheme)
local AppFont = require(CorePackages.AppTempCommon.LuaApp.Style.Fonts.Gotham)
local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local Rodux = InGameMenuDependencies.Rodux
local UIBlox = InGameMenuDependencies.UIBlox
local InGameMenu = script.Parent.Parent.Parent
local reducer = require(InGameMenu.reducer)
local Localization = require(InGameMenu.Localization.Localization)
local LocalizationProvider = require(InGameMenu.Localization.LocalizationProvider)

local QuickActionsMenu = require(script.Parent.QuickActionsMenu)

return function()
	it("should create and destroy without errors for horizontal layout", function()
		local appStyle = {
			Theme = AppDarkTheme,
			Font = AppFont,
		}
		local transparencies = {
			button1 = 0,
			button2 = 0,
			button3 = 0,
			button4 = 0,
		}
		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = Rodux.Store.new(reducer),
		}, {
			ThemeProvider = Roact.createElement(UIBlox.Core.Style.Provider, {
				style = appStyle,
			}, {
				LocalizationProvider = Roact.createElement(LocalizationProvider, {
					localization = Localization.new("en-us"),
				}, {
					QuickActions = Roact.createElement(QuickActionsMenu, {
						layoutOrder = 1,
						respawnEnabled = true,
						voiceEnabled = false,
						screenshotEnabled = true,
						fullscreenEnabled = true,
						transparencies = transparencies,
						fillDirection = Enum.FillDirection.Horizontal,
						automaticSize = Enum.AutomaticSize.X,
						size = UDim2.new(0, 0, 0, 108),
						isHorizontal = true,
					}),
				}),
			}),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy without errors for vertical layout", function()
		local appStyle = {
			Theme = AppDarkTheme,
			Font = AppFont,
		}
		local transparencies = {
			button1 = 0,
			button2 = 0,
			button3 = 0,
		}
		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = Rodux.Store.new(reducer),
		}, {
			ThemeProvider = Roact.createElement(UIBlox.Core.Style.Provider, {
				style = appStyle,
			}, {
				LocalizationProvider = Roact.createElement(LocalizationProvider, {
					localization = Localization.new("en-us"),
				}, {
					QuickActions = Roact.createElement(QuickActionsMenu, {
						layoutOrder = 2,
						respawnEnabled = true,
						voiceEnabled = false,
						screenshotEnabled = true,
						fullscreenEnabled = false,
						transparencies = transparencies,
						fillDirection = Enum.FillDirection.Vertical,
						automaticSize = Enum.AutomaticSize.Y,
						size = UDim2.new(0, 60, 0, 0),
						isHorizontal = false,
					}),
				}),
			}),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
