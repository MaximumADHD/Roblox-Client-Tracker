return function()
	local CorePackages = game:GetService("CorePackages")
	local CoreGui = game:GetService("CoreGui")

	local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
	local InGameMenu = script.Parent.Parent
	local reducer = require(InGameMenu.reducer)
	local UIBlox = InGameMenuDependencies.UIBlox
	local AppDarkTheme = require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
	local AppFont = require(CorePackages.Workspace.Packages.Style).Fonts.Gotham

	local appStyle = {
		Theme = AppDarkTheme,
		Font = AppFont,
	}

	local Localization = require(InGameMenu.Localization.Localization)
	local Rodux = InGameMenuDependencies.Rodux
	local RoactRodux = InGameMenuDependencies.RoactRodux
	local Roact = InGameMenuDependencies.Roact
	local LocalizationProvider = require(InGameMenu.Localization.LocalizationProvider)
	local FocusHandlerContextProvider = require(
		InGameMenu.Components.Connection.FocusHandlerUtils.FocusHandlerContextProvider
	)
	local PlayerContextualMenuWrapper = require(script.Parent.PlayerContextualMenuWrapper)

	local function getMountableTreeAndStore(props)
		local store = Rodux.Store.new(reducer, {}, { Rodux.thunkMiddleware })

		local playerContextualMenuWrapper = Roact.createElement(PlayerContextualMenuWrapper, props)

		return Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			ThemeProvider = Roact.createElement(UIBlox.Core.Style.Provider, {
				style = appStyle,
			}, {
				LocalizationProvider = Roact.createElement(LocalizationProvider, {
					localization = Localization.new("en-us"),
				}, {
					FocusHandlerContextProvider = Roact.createElement(FocusHandlerContextProvider, {}, {
						PlayerContextualMenuWrapper = playerContextualMenuWrapper,
					}),
				}),
			}),
		}),
			store
	end

	describe("lifecycle", function()
		it("mounts and unmounts with no issues", function()
			local element = getMountableTreeAndStore()

			local folder = Instance.new("ScreenGui", CoreGui)
			local instance = Roact.mount(element, folder)
			Roact.unmount(instance)
		end)
	end)
end
