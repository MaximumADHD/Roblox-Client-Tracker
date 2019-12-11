return function()
	local CorePackages = game:GetService("CorePackages")

	local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
	local Cryo = InGameMenuDependencies.Cryo
	local Roact = InGameMenuDependencies.Roact
	local UIBlox = InGameMenuDependencies.UIBlox

	local InGameMenu = script.Parent.Parent

	local Localization = require(InGameMenu.Localization.Localization)
	local LocalizationProvider = require(InGameMenu.Localization.LocalizationProvider)

	local AppDarkTheme = require(CorePackages.AppTempCommon.LuaApp.Style.Themes.DarkTheme)
	local AppFont = require(CorePackages.AppTempCommon.LuaApp.Style.Fonts.Gotham)

	local DropDownSelection = require(script.Parent.DropDownSelection)

	local appStyle = {
		Theme = AppDarkTheme,
		Font = AppFont,
	}

	local dummyDropDownProps = {
		Size = UDim2.new(0, 200, 0, 44),
		Position = UDim2.new(0.5, 0, 0.5, 0),
		LayoutOrder = 0,

		placeHolderText = "Placeholder",
		selectedIndex = 0,
		selections = {
			"Option1",
			"Option2",
			"Option3",
		},
		localize = false,
		enabled = true,
		selectionChanged = function()
			print("selection changed")
		end,
	}

	it("should create and destroy without errors", function()
		local element = Roact.createElement(UIBlox.Core.Style.Provider, {
			style = appStyle,
		}, {
			LocalizationProvider = Roact.createElement(LocalizationProvider, {
				localization = Localization.new("en-us"),
			}, {
				DropDownSelection = Roact.createElement(DropDownSelection, dummyDropDownProps),
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy without errors with a selected item", function()
		local element = Roact.createElement(UIBlox.Core.Style.Provider, {
			style = appStyle,
		}, {
			LocalizationProvider = Roact.createElement(LocalizationProvider, {
				localization = Localization.new("en-us"),
			}, {
				DropDownSelection = Roact.createElement(DropDownSelection, Cryo.Dictionary.join(dummyDropDownProps, {
					selectedIndex = 1,
				})),
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should throw when passed a selectedIndex out of bounds when propvalidation is turned on", function()
		Roact.setGlobalConfig({
			propValidation = true,
		})

		local element = Roact.createElement(UIBlox.Core.Style.Provider, {
			style = appStyle,
		}, {
			LocalizationProvider = Roact.createElement(LocalizationProvider, {
				localization = Localization.new("en-us"),
			}, {
				DropDownSelection = Roact.createElement(DropDownSelection, Cryo.Dictionary.join(dummyDropDownProps, {
					selectedIndex = 100,
				})),
			}),
		})

		expect(function()
			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end).to.throw()
	end)
end