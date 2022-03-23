return function()
	local CorePackages = game:GetService("CorePackages")

	local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
	local Roact = InGameMenuDependencies.Roact
	local UIBlox = InGameMenuDependencies.UIBlox
	local IconSize = UIBlox.App.ImageSet.Enum.IconSize

	local AppDarkTheme = require(CorePackages.AppTempCommon.LuaApp.Style.Themes.DarkTheme)
	local AppFont = require(CorePackages.AppTempCommon.LuaApp.Style.Fonts.Gotham)

	local appStyle = {
		Theme = AppDarkTheme,
		Font = AppFont,
	}

	local MuteAllButton = require(script.Parent.MuteAllButton)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(UIBlox.Core.Style.Provider, {
			style = appStyle,
		}, {
			MuteAllButton = Roact.createElement(MuteAllButton, {
				iconSize = IconSize.Medium,
				layoutOrder = 2,
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
