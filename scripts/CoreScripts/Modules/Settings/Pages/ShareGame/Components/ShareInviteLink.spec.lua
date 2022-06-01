return function()
	local CorePackages = game:GetService("CorePackages")
	local CoreGui = game:GetService("CoreGui")
	local RobloxGui = CoreGui:WaitForChild("RobloxGui")
	local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
	local Roact = InGameMenuDependencies.Roact
	local UIBlox = InGameMenuDependencies.UIBlox
	local ShareGame = RobloxGui.Modules.Settings.Pages.ShareGame
	local Constants = require(ShareGame.Constants)

	local AppDarkTheme = require(CorePackages.AppTempCommon.LuaApp.Style.Themes.DarkTheme)
	local AppFont = require(CorePackages.AppTempCommon.LuaApp.Style.Fonts.Gotham)

	local appStyle = {
		Theme = AppDarkTheme,
		Font = AppFont,
	}

	local ShareInviteLink = require(script.Parent.ShareInviteLink)

	it("should mount", function()
		local element = Roact.createElement(UIBlox.Core.Style.Provider, {
			style = appStyle,
		}, {
			ShareButton = Roact.createElement(ShareInviteLink, {
				deviceLayout = Constants.DeviceLayout.DESKTOP,
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
