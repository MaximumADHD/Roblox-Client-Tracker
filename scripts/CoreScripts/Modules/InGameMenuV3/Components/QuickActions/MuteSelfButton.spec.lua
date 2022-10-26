--!nonstrict
return function()
	local CorePackages = game:GetService("CorePackages")
	local CoreGui = game:GetService("CoreGui")
	local Players = game:GetService("Players")

	local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
	local Roact = InGameMenuDependencies.Roact
	local RoactRodux = InGameMenuDependencies.RoactRodux
	local Rodux = InGameMenuDependencies.Rodux
	local UIBlox = InGameMenuDependencies.UIBlox
	local IconSize = UIBlox.App.ImageSet.Enum.IconSize

	local InGameMenu = script.Parent.Parent.Parent
	local reducer = require(InGameMenu.reducer)
	local Localization = require(InGameMenu.Localization.Localization)
	local LocalizationProvider = require(InGameMenu.Localization.LocalizationProvider)
	local ParticipantAdded = require(CoreGui.RobloxGui.Modules.VoiceChat.Actions.ParticipantAdded)

	local AppDarkTheme = require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
	local AppFont = require(CorePackages.Workspace.Packages.Style).Fonts.Gotham

	local appStyle = {
		Theme = AppDarkTheme,
		Font = AppFont,
	}

	local MuteSelfButton = require(script.Parent.MuteSelfButton)

	local store = Rodux.Store.new(reducer)
	it("should create and destroy without errors", function()
		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store
		}, {
			ThemeProvider = Roact.createElement(UIBlox.Core.Style.Provider, {
				style = appStyle,
			}, {
				LocalizationProvider = Roact.createElement(LocalizationProvider, {
					localization = Localization.new("en-us"),
				}, {
					MuteSelfButton = Roact.createElement(MuteSelfButton, {
						iconSize = IconSize.Medium,
						layoutOrder = 1,
					}),
				}),
			}),
		})
		store:dispatch(ParticipantAdded(tostring(Players.localPlayer.UserId)))

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
