--!nonstrict
return function()
	local CorePackages = game:GetService("CorePackages")

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
	local Roact = InGameMenuDependencies.Roact
	local Rodux = InGameMenuDependencies.Rodux
	local RoactRodux = InGameMenuDependencies.RoactRodux
	local UIBlox = InGameMenuDependencies.UIBlox

	local InGameMenu = script.Parent.Parent.Parent
	local Localization = require(InGameMenu.Localization.Localization)
	local LocalizationProvider = require(InGameMenu.Localization.LocalizationProvider)
	local reducer = require(InGameMenu.reducer)

	local Flags = InGameMenu.Flags
	local GetFFlagIGMGamepadSelectionHistory = require(Flags.GetFFlagIGMGamepadSelectionHistory)


	local FocusHandlerContextProvider = require(script.Parent.Parent.Connection.FocusHandlerUtils.FocusHandlerContextProvider)
	local VolumeEntry = require(script.Parent.VolumeEntry)

	it("should create and destroy without errors", function()
		local testButtonRef = Roact.createRef()

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = Rodux.Store.new(reducer)
		}, {
			ThemeProvider = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
				LocalizationProvider = Roact.createElement(LocalizationProvider, {
					localization = Localization.new("en-us"),
				}, {
					FocusHandlerContextProvider = GetFFlagIGMGamepadSelectionHistory() and Roact.createElement(FocusHandlerContextProvider, {}, {
						VolumeEntry = Roact.createElement(VolumeEntry, {
							LayoutOrder = 9,
							canCaptureFocus = true,
							isMenuOpen = true,
							buttonRef =  testButtonRef,
						}),
					}) or nil,
					VolumeEntry = not GetFFlagIGMGamepadSelectionHistory() and Roact.createElement(VolumeEntry, {
						LayoutOrder = 9,
						canCaptureFocus = true,
						isMenuOpen = true,
						buttonRef =  testButtonRef,
					}) or nil,
				}),
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)


	it("should set buttonRef properties reference to a button instance", function()
		local testButtonRef = Roact.createRef()

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = Rodux.Store.new(reducer)
		}, {
			ThemeProvider = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
				LocalizationProvider = Roact.createElement(LocalizationProvider, {
					localization = Localization.new("en-us"),
				}, {
					FocusHandlerContextProvider = GetFFlagIGMGamepadSelectionHistory() and Roact.createElement(FocusHandlerContextProvider, {}, {
						VolumeEntry = Roact.createElement(VolumeEntry, {
							LayoutOrder = 9,
							canCaptureFocus = true,
							isMenuOpen = true,
							buttonRef =  testButtonRef,
						}),
					}) or nil,
					VolumeEntry = not GetFFlagIGMGamepadSelectionHistory() and Roact.createElement(VolumeEntry, {
						LayoutOrder = 9,
						canCaptureFocus = true,
						isMenuOpen = true,
						buttonRef =  testButtonRef,
					}) or nil,
				}),
			}),
		})

		local instance = Roact.mount(element)

		expect(testButtonRef:getValue()).never.toBeNil()
		expect(type(testButtonRef:getValue())).toBe("userdata")

		Roact.unmount(instance)
	end)
end
