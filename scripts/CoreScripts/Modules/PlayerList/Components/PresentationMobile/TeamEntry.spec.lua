return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)
	local Rodux = require(CorePackages.Rodux)
	local RoactRodux = require(CorePackages.RoactRodux)
	local UIBlox = require(CorePackages.UIBlox)

	local Components = script.Parent.Parent
	local Connection = Components.Connection
	local LayoutValues = require(Connection.LayoutValues)
	local LayoutValuesProvider = LayoutValues.Provider

	local PlayerList = Components.Parent
	local CreateLayoutValues = require(PlayerList.CreateLayoutValues)

	local TeamEntry = require(script.Parent.TeamEntry)

	local AppDarkTheme = require(CorePackages.AppTempCommon.LuaApp.Style.Themes.DarkTheme)
	local AppFont = require(CorePackages.AppTempCommon.LuaApp.Style.Fonts.Gotham)

	local Reducers = PlayerList.Reducers
	local Reducer = require(Reducers.Reducer)

	local appStyle = {
		Theme = AppDarkTheme,
		Font = AppFont,
	}

	it("should create and destroy without errors", function()
		local store = Rodux.Store.new(Reducer)

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			LayoutValuesProvider = Roact.createElement(LayoutValuesProvider, {
				layoutValues = CreateLayoutValues(false)
			}, {
				ThemeProvider = Roact.createElement(UIBlox.Style.Provider, {
					style = appStyle,
				}, {
					TeamEntry = Roact.createElement(TeamEntry, {
						entrySize = 50,
						layoutOrder = 0,
						leaderstats = {},
						gameStats = {},
					})
				})
			})
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy without errors tenfoot", function()
		local store = Rodux.Store.new(Reducer)

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			LayoutValuesProvider = Roact.createElement(LayoutValuesProvider, {
				layoutValues = CreateLayoutValues(true)
			}, {
				ThemeProvider = Roact.createElement(UIBlox.Style.Provider, {
					style = appStyle,
				}, {
					TeamEntry = Roact.createElement(TeamEntry, {
						entrySize = 150,
						layoutOrder = 0,
						leaderstats = {},
						gameStats = {},
					})
				})
			})
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end