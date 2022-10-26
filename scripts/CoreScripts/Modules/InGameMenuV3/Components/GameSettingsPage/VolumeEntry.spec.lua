--!nonstrict
return function()
	local CorePackages = game:GetService("CorePackages")

	local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
	local Roact = InGameMenuDependencies.Roact
	local Rodux = InGameMenuDependencies.Rodux
	local RoactRodux = InGameMenuDependencies.RoactRodux
	local UIBlox = InGameMenuDependencies.UIBlox

	local InGameMenu = script.Parent.Parent.Parent
	local Localization = require(InGameMenu.Localization.Localization)
	local LocalizationProvider = require(InGameMenu.Localization.LocalizationProvider)
	local reducer = require(InGameMenu.reducer)

	local AppDarkTheme = require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
	local AppFont = require(CorePackages.Workspace.Packages.Style).Fonts.Gotham

	local appStyle = {
		Theme = AppDarkTheme,
		Font = AppFont,
	}

	local FocusHandlerContextProvider = require(
		script.Parent.Parent.Connection.FocusHandlerUtils.FocusHandlerContextProvider
	)
	local VolumeEntry = require(script.Parent.VolumeEntry)

	itSKIP("should create and destroy without errors", function()
		local testButtonRef = Roact.createRef()

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = Rodux.Store.new(reducer),
		}, {
			ThemeProvider = Roact.createElement(UIBlox.Core.Style.Provider, {
				style = appStyle,
			}, {
				LocalizationProvider = Roact.createElement(LocalizationProvider, {
					localization = Localization.new("en-us"),
				}, {
					FocusHandlerContextProvider = Roact.createElement(FocusHandlerContextProvider, {}, {
						VolumeEntry = Roact.createElement(VolumeEntry, {
							LayoutOrder = 9,
							canCaptureFocus = true,
							isMenuOpen = true,
							buttonRef = testButtonRef,
						}),
					}),
				}),
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	itSKIP("should set buttonRef properties reference to a button instance", function()
		local testButtonRef = Roact.createRef()

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = Rodux.Store.new(reducer),
		}, {
			ThemeProvider = Roact.createElement(UIBlox.Core.Style.Provider, {
				style = appStyle,
			}, {
				LocalizationProvider = Roact.createElement(LocalizationProvider, {
					localization = Localization.new("en-us"),
				}, {
					FocusHandlerContextProvider = Roact.createElement(FocusHandlerContextProvider, {}, {
						VolumeEntry = Roact.createElement(VolumeEntry, {
							LayoutOrder = 9,
							canCaptureFocus = true,
							isMenuOpen = true,
							buttonRef = testButtonRef,
						}),
					}),
				}),
			}),
		})

		local instance = Roact.mount(element)

		expect(testButtonRef:getValue()).to.be.ok()
		expect(type(testButtonRef:getValue())).to.equal("userdata")

		Roact.unmount(instance)
	end)
end
