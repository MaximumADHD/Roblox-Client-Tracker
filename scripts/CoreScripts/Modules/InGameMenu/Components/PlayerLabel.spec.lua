return function()
	local CorePackages = game:GetService("CorePackages")

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
	local Roact = InGameMenuDependencies.Roact
	local RoactRodux = InGameMenuDependencies.RoactRodux
	local Rodux = InGameMenuDependencies.Rodux
	local UIBlox = InGameMenuDependencies.UIBlox

	local InGameMenu = script.Parent.Parent
	local reducer = require(InGameMenu.reducer)
	local Localization = require(InGameMenu.Localization.Localization)
	local LocalizationProvider = require(InGameMenu.Localization.LocalizationProvider)


	local PlayerLabel = require(script.Parent.PlayerLabel)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = Rodux.Store.new(reducer)
		}, {
			ThemeProvider = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
				LocalizationProvider = Roact.createElement(LocalizationProvider, {
					localization = Localization.new("en-us"),
				}, {
					PlayerLabel = Roact.createElement(PlayerLabel, {
						userId = 2231221,
						username = "TheGamer101",
						isOnline = true,
						isSelected = false,
						LayoutOrder = 1,
						Visible = true,

						onActivated = function()
							print("clicked")
						end,
					}),
				}),
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should accept and assign a ref", function()
		local ref = Roact.createRef()

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = Rodux.Store.new(reducer)
		}, {
			ThemeProvider = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
				LocalizationProvider = Roact.createElement(LocalizationProvider, {
					localization = Localization.new("en-us"),
				}, {
					PlayerLabel = Roact.createElement(PlayerLabel, {
						userId = 2231221,
						username = "TheGamer101",
						isOnline = true,
						isSelected = false,
						LayoutOrder = 1,
						Visible = true,

						[Roact.Ref] = ref,

						onActivated = function()
							print("clicked")
						end,
					}),
				}),
			}),
		})

		local instance = Roact.mount(element)
		expect(ref.current).never.toBeNil()
		expect(ref.current:IsA("Instance")).toBe(true)
		Roact.unmount(instance)
	end)
end
