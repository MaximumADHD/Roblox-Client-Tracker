--!nonstrict
return function()
	local CorePackages = game:GetService("CorePackages")
	local Players = game:GetService("Players")

	local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
	local Roact = InGameMenuDependencies.Roact
	local Rodux = InGameMenuDependencies.Rodux
	local RoactRodux = InGameMenuDependencies.RoactRodux
	local UIBlox = InGameMenuDependencies.UIBlox

	local InGameMenu = script.Parent.Parent.Parent
	local Localization = require(InGameMenu.Localization.Localization)
	local LocalizationProvider = require(InGameMenu.Localization.LocalizationProvider)
	local reducer = require(InGameMenu.reducer)

	local AppDarkTheme = require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
	local AppFont = require(CorePackages.Workspace.Packages.Style).Fonts.Gotham

	local appStyle = {
		Theme = AppDarkTheme,
		Font = AppFont,
	}

	local FocusHandlerContextProvider = require(
		script.Parent.Parent.Connection.FocusHandlerUtils.FocusHandlerContextProvider
	)
	local MovementModeEntry = require(script.Parent.MovementModeEntry)

	local UserGameSettings = UserSettings():GetService("UserGameSettings")
	local localPlayer = Players.LocalPlayer

	it("should create and destroy without errors", function()
		local movementModeEntry = Roact.createElement(MovementModeEntry, {
			LayoutOrder = 2,
			screenSize = Vector2.new(512, 512),
		})

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = Rodux.Store.new(reducer),
		}, {
			ThemeProvider = Roact.createElement(UIBlox.Core.Style.Provider, {
				style = appStyle,
			}, {
				LocalizationProvider = Roact.createElement(LocalizationProvider, {
					localization = Localization.new("en-us"),
				}, {
					FocusHandlerContextProvider = Roact.createElement(FocusHandlerContextProvider, {}, {
						MovementModeEntry = movementModeEntry,
					}),
				}),
			}),
		})

		local instance = Roact.mount(element)

		UserGameSettings.ComputerMovementMode = Enum.ComputerMovementMode.ClickToMove
		localPlayer.DevComputerMovementMode = Enum.DevComputerMovementMode.ClickToMove

		Roact.unmount(instance)
	end)
end
