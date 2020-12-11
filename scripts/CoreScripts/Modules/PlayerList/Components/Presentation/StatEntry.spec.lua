return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)
	local UIBlox = require(CorePackages.UIBlox)

	local Components = script.Parent.Parent
	local Connection = Components.Connection
	local LayoutValues = require(Connection.LayoutValues)
	local LayoutValuesProvider = LayoutValues.Provider

	local PlayerList = Components.Parent
	local CreateLayoutValues = require(PlayerList.CreateLayoutValues)

	local StatEntry = require(script.Parent.StatEntry)

	local AppDarkTheme = require(CorePackages.AppTempCommon.LuaApp.Style.Themes.DarkTheme)
	local AppFont = require(CorePackages.AppTempCommon.LuaApp.Style.Fonts.Gotham)

	local appStyle = {
		Theme = AppDarkTheme,
		Font = AppFont,
	}

	it("should create and destroy without errors", function()
		local layoutValues = CreateLayoutValues(false)

		local element = Roact.createElement(LayoutValuesProvider, {
			layoutValues = layoutValues
		}, {
			ThemeProvider = Roact.createElement(UIBlox.Style.Provider, {
				style = appStyle,
			}, {
				StatEntry = Roact.createElement(StatEntry, {
					statName = "Test Stat",
					statValue = 50,
					isTitleEntry = false,
					isTeamEntry = false,
					layoutOrder = 2,

					backgroundStyle = {
						Color = Color3.new(1, 1, 1),
						Transparency = 1,
					},
					overlayStyle = {
						Color = Color3.new(0.5, 0.5, 0.5),
						Transparency = 0.5,
					},
					doubleOverlay = false,
					textStyle = {
						Color = Color3.new(1, 1, 1),
						Transparency = 0,
					},
				})
			})
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy without errors tenfoot", function()
		local layoutValues = CreateLayoutValues(true)

		local element = Roact.createElement(LayoutValuesProvider, {
			layoutValues = layoutValues
		}, {
			ThemeProvider = Roact.createElement(UIBlox.Style.Provider, {
				style = appStyle,
			}, {
				StatEntry = Roact.createElement(StatEntry, {
					statName = "Test Stat",
					statValue = 50,
					isTitleEntry = true,
					isTeamEntry = true,
					layoutOrder = 2,

					backgroundStyle = layoutValues.BackgroundStyle.Default,
					overlayStyle = {
						Color = Color3.new(1, 1, 1),
						Transparency = 1,
					},
					doubleOverlay = false,
					textStyle = layoutValues.DefaultTextStyle,
				})
			})
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end