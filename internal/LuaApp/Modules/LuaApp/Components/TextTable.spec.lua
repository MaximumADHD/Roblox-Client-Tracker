return function()
	local LocalizationService = game:GetService("LocalizationService")

	local Modules = game:GetService("CoreGui").RobloxGui.Modules
	local Roact = require(Modules.Common.Roact)

	local RoactLocalization = require(Modules.LuaApp.RoactLocalization)
	local Localization = require(Modules.LuaApp.Localization)
	local StringsLocale = require(Modules.LuaApp.StringsLocale)
	local TextTable = require(Modules.LuaApp.Components.TextTable)

	it("should create and destroy without errors when empty", function()
		local localization = Localization.new(StringsLocale, LocalizationService.RobloxLocaleId)
		local root = Roact.createElement(RoactLocalization.LocalizationProvider, {
			localization = localization,
		}, {
			element = Roact.createElement(TextTable, {
				table = {},
			}),
		})
		local instance = Roact.reify(root)
		Roact.teardown(instance)
	end)

	it("should create and destroy without errors with data", function()
		local localization = Localization.new(StringsLocale, LocalizationService.RobloxLocaleId)
		local root = Roact.createElement(RoactLocalization.LocalizationProvider, {
			localization = localization,
		}, {
			element = Roact.createElement(TextTable, {
				table = {
					{"this", "is"},
					{"a", "test"},
				},
			}),
		})
		local instance = Roact.reify(root)
		Roact.teardown(instance)
	end)

	it("should create and destroy without errors with data and props", function()
		local localization = Localization.new(StringsLocale, LocalizationService.RobloxLocaleId)
		local root = Roact.createElement(RoactLocalization.LocalizationProvider, {
			localization = localization,
		}, {
			element = Roact.createElement(TextTable, {
				table = {
					{"this", "is"},
					{"a", "test", "hehe"},
				},
				majorProps = {
					{BackgroundTransparency = 0},
				},
			}),
		})
		local instance = Roact.reify(root)
		Roact.teardown(instance)
	end)
end