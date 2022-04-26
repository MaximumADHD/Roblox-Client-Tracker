return function()
	local CorePackages = game:GetService("CorePackages")

	local AppDarkTheme = require(CorePackages.AppTempCommon.LuaApp.Style.Themes.DarkTheme)
	local AppFont = require(CorePackages.AppTempCommon.LuaApp.Style.Fonts.Gotham)
	local Roact = require(CorePackages.Roact)
	local RoactRodux = require(CorePackages.RoactRodux)
	local Rodux = require(CorePackages.Rodux)
	local UIBlox = require(CorePackages.UIBlox)

	local BlockPlayerItem = require(script.Parent.BlockPlayerItem)

	local appStyle = {
		Theme = AppDarkTheme,
		Font = AppFont,
	}

	it("should create and destroy without errors", function()
		local element = Roact.createElement(UIBlox.Core.Style.Provider, {
			style = appStyle,
		}, {
			BlockPlayerItem = Roact.createElement(BlockPlayerItem, {
				size = UDim2.new(0, 492, 0, 56),
				text = "test",
				isCheckBoxSelected = true,
				onCheckBoxActivated = function(selected) end,
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
