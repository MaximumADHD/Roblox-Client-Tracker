return function()
	local CorePackages = game:GetService("CorePackages")
	local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
	local Roact = InGameMenuDependencies.Roact
	local RoactRodux = InGameMenuDependencies.RoactRodux
	local Rodux = InGameMenuDependencies.Rodux
	local UIBlox = InGameMenuDependencies.UIBlox

	local InGameMenu = script.Parent.Parent
	local reducer = require(InGameMenu.reducer)
	local Localization = require(InGameMenu.Localization.Localization)
	local LocalizationProvider = require(InGameMenu.Localization.LocalizationProvider)

	local AppDarkTheme = require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
	local AppFont = require(CorePackages.Workspace.Packages.Style).Fonts.Gotham

	local FavoriteButton = require(script.Parent.FavoriteButton)
	local SetGameFavorite = require(InGameMenu.Actions.SetGameFavorite)

	local appStyle = {
		Theme = AppDarkTheme,
		Font = AppFont,
	}

	it("should create and destroy without errors", function()
		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = Rodux.Store.new(reducer)
		}, {
			ThemeProvider = Roact.createElement(UIBlox.Core.Style.Provider, {
				style = appStyle,
			}, {
				LocalizationProvider = Roact.createElement(LocalizationProvider, {
					localization = Localization.new("en-us"),
				}, {
					FavoriteButton = Roact.createElement(FavoriteButton, {}),
				}),
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should SetGameFavorite without errors", function()

		local store = Rodux.Store.new(reducer);
		local universeId = game.GameId

		expect(store:getState().gameInfo.isFavorited).to.equal(false)
		store:dispatch(SetGameFavorite(tostring(universeId), true))
		expect(store:getState().gameInfo.isFavorited).to.equal(true)
		store:dispatch(SetGameFavorite(tostring(universeId), false))
		expect(store:getState().gameInfo.isFavorited).to.equal(false)

		local favBtn = Roact.createElement(FavoriteButton, {})

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = Rodux.Store.new(reducer)
		}, {
			ThemeProvider = Roact.createElement(UIBlox.Core.Style.Provider, {
				style = appStyle,
			}, {
				LocalizationProvider = Roact.createElement(LocalizationProvider, {
					localization = Localization.new("en-us"),
				}, {
					FavoriteButton = favBtn,
				}),
			}),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

end
