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

	local GameIconButton = require(script.Parent.GameIconButton)

	it("should create and destroy with default props without errors", function()
		local element = Roact.createElement(UIBlox.Core.Style.Provider, {
			style = appStyle,
		}, {
			GameIconButton = Roact.createElement(GameIconButton, {
				onActivated = function() end,
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy with all props without errors", function()
		local element = Roact.createElement(UIBlox.Core.Style.Provider, {
			style = appStyle,
		}, {
			GameIconButton = Roact.createElement(GameIconButton, {
				anchorPoint = Vector2.new(0.5, 0.5),
				position = UDim2.new(1, 100, 1, 100),
				layoutOrder = 1,
				onActivated = function() end,
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
