return function()
	local CorePackages = game:GetService("CorePackages")

	local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
	local Roact = InGameMenuDependencies.Roact
	local UIBlox = InGameMenuDependencies.UIBlox

	local InGameMenu = script.Parent.Parent
	local Localization = require(InGameMenu.Localization.Localization)
	local LocalizationProvider = require(InGameMenu.Localization.LocalizationProvider)

	local AppDarkTheme = require(CorePackages.AppTempCommon.LuaApp.Style.Themes.DarkTheme)
	local AppFont = require(CorePackages.AppTempCommon.LuaApp.Style.Fonts.Gotham)

	local appStyle = {
		Theme = AppDarkTheme,
		Font = AppFont,
	}

	local MoreActionsMenu = require(script.Parent.MoreActionsMenu)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(UIBlox.Core.Style.Provider, {
			style = appStyle,
		}, {
			LocalizationProvider = Roact.createElement(LocalizationProvider, {
				localization = Localization.new("en-us"),
			}, {
				MoreActionsMenu = Roact.createElement(MoreActionsMenu, {
					Position = UDim2.new(0.5, 0, 0.5, 0),
					Visible = true,
					menuWidth = UDim.new(0, 150),
					actionHeight = UDim.new(0, 150),
					actions = {
						{
							text = "CoreScripts.InGameMenu.Actions.AddFriend",
							icon = "",
							onActivated = function()
								print("first option")
							end,
						},
						{
							text = "CoreScripts.InGameMenu.Actions.Unfriend",
							icon = "",
							onActivated = function()
								print("second option")
							end,
						},
					},
				}),
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end