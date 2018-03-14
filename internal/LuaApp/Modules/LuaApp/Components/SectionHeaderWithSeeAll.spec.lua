return function()
	local LocalizationService = game:GetService("LocalizationService")
	local Modules = game:GetService("CoreGui").RobloxGui.Modules
	local Roact = require(Modules.Common.Roact)
	local Localization = require(Modules.LuaApp.Localization)
	local RoactLocalization = require(Modules.LuaApp.RoactLocalization)
	local StringsLocale = require(Modules.LuaApp.StringsLocale)

	local SectionHeaderWithSeeAll = require(script.parent.SectionHeaderWithSeeAll)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(RoactLocalization.LocalizationProvider, {
			localization = Localization.new(StringsLocale, LocalizationService.RobloxLocaleId),
		}, {
			header = Roact.createElement(SectionHeaderWithSeeAll, {
				text = "Best Section Ever!",
				width = 100,

				onActivated = function()
					print("Hi!")
				end
			}),
		})
		local instance = Roact.reify(element)
		Roact.teardown(instance)
	end)
end