return function()
	local CorePackages = game:GetService("CorePackages")

	local AppDarkTheme = require(CorePackages.AppTempCommon.LuaApp.Style.Themes.DarkTheme)
	local AppFont = require(CorePackages.AppTempCommon.LuaApp.Style.Fonts.Gotham)

	local Roact = require(CorePackages.Roact)
	local Rodux = require(CorePackages.Rodux)
	local RoactRodux = require(CorePackages.RoactRodux)
	local UIBlox = require(CorePackages.UIBlox)

	local Reducers = require(script.Parent.Parent.Reducers)

	local appStyle = {
		Theme = AppDarkTheme,
		Font = AppFont,
	}

	describe("TrustAndSafetyApp", function()
		it("should create and destroy without errors", function()
			local TrustAndSafetyApp = require(script.Parent.TrustAndSafetyApp)

			local store = Rodux.Store.new(Reducers, nil, {
				Rodux.thunkMiddleware,
			})

			local element = Roact.createElement(RoactRodux.StoreProvider, {
				store = store,
			}, {
				ThemeProvider = Roact.createElement(UIBlox.Style.Provider, {
					style = appStyle,
				}, {
					TrustAndSafetyApp = Roact.createElement(TrustAndSafetyApp)
				})
			})

			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)
	end)
end
