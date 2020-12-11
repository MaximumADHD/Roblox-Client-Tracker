return function()
	local CorePackages = game:GetService("CorePackages")

	local AppDarkTheme = require(CorePackages.AppTempCommon.LuaApp.Style.Themes.DarkTheme)
	local AppFont = require(CorePackages.AppTempCommon.LuaApp.Style.Fonts.Gotham)

	local Roact = require(CorePackages.Roact)
	local UIBlox = require(CorePackages.UIBlox)

	local appStyle = {
		Theme = AppDarkTheme,
		Font = AppFont,
	}

	describe("ListEntry", function()
		it("should create and destroy without errors", function()
			local ListEntry = require(script.Parent.ListEntry)

			local element = Roact.createElement(UIBlox.Style.Provider, {
				style = appStyle,
			}, {
				ListEntry = Roact.createElement(ListEntry, {
					text = "Hello World!",
					hasBullet = true,
					layoutOrder = 1,
				})
			})

			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)
	end)
end
