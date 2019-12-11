return function()
	local CorePackages = game:GetService("CorePackages")

	local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
	local Roact = InGameMenuDependencies.Roact
	local UIBlox = InGameMenuDependencies.UIBlox

	local AppDarkTheme = require(CorePackages.AppTempCommon.LuaApp.Style.Themes.DarkTheme)
	local AppFont = require(CorePackages.AppTempCommon.LuaApp.Style.Fonts.Gotham)

	local appStyle = {
		Theme = AppDarkTheme,
		Font = AppFont,
	}

	local Slider = require(script.Parent.Slider)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(UIBlox.Core.Style.Provider, {
			style = appStyle,
		}, {
			Slider = Roact.createElement(Slider, {
				min = 0,
				max = 10,
				stepInterval = 1,
				value = 5,
				valueChanged = function()
					print("Value changed")
				end,
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end