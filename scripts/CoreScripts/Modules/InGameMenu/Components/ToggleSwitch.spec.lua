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

	local ToggleSwitch = require(script.Parent.ToggleSwitch)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(UIBlox.Core.Style.Provider, {
			style = appStyle,
		}, {
			ToggleSwitch = Roact.createElement(ToggleSwitch, {
				checked = false,
				onToggled = function()
					print("onToggled")
				end,
				disabled = false,

				AnchorPoint = Vector2.new(0.5, 0.5),
				LayoutOrder = 4,
				Position = UDim2.new(0.5, 0, 0.5, 0),
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy without errors when checked", function()
		local element = Roact.createElement(UIBlox.Core.Style.Provider, {
			style = appStyle,
		}, {
			ToggleSwitch = Roact.createElement(ToggleSwitch, {
				checked = true,
				onToggled = function()
					print("onToggled")
				end,
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end