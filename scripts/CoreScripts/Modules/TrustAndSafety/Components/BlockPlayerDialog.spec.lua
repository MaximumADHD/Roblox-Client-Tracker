--!nonstrict
return function()
	local CorePackages = game:GetService("CorePackages")

	local Roact = require(CorePackages.Roact)
	local RoactRodux = require(CorePackages.RoactRodux)
	local Rodux = require(CorePackages.Rodux)
	local UIBlox = require(CorePackages.UIBlox)

	local TnsModule = script.Parent.Parent
	local Dependencies = require(TnsModule.Dependencies)
	local Localization = require(Dependencies.Localization)
	local LocalizationProvider = require(Dependencies.LocalizationProvider)
	local Reducers = require(TnsModule.Reducers)
	local OpenBlockPlayerDialog = require(TnsModule.Actions.OpenBlockPlayerDialog)

	local AppDarkTheme = require(CorePackages.AppTempCommon.LuaApp.Style.Themes.DarkTheme)
	local AppFont = require(CorePackages.AppTempCommon.LuaApp.Style.Fonts.Gotham)

	local appStyle = {
		Theme = AppDarkTheme,
		Font = AppFont,
	}

	local BlockPlayerDialog = require(script.Parent.BlockPlayerDialog)

	local function getStore()
		local store = Rodux.Store.new(Reducers)
		store:dispatch(OpenBlockPlayerDialog({
			UserId = 123,
			Name = "testName",
			DisplayName = "testDisplay",
		}))
		return store
	end

	describe("mount & unmount", function()
		it("should create and destroy without errors", function()
			local element = Roact.createElement(RoactRodux.StoreProvider, {
				store = getStore(),
			}, {
				StyleProvider = Roact.createElement(UIBlox.Core.Style.Provider, {
					style = appStyle,
				}, {
					LocalizationProvider = Roact.createElement(LocalizationProvider, {
						localization = Localization.new("en-us"),
					}, {
						BlockPlayerDialog = Roact.createElement(BlockPlayerDialog),
					}),
				}),
			})
			
			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)
	end)
end
