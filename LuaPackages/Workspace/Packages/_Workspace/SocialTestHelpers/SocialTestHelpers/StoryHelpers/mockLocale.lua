local SocialTestHelpers = script:FindFirstAncestor("SocialTestHelpers")
local dependencies = require(SocialTestHelpers.dependencies)
local Localization = dependencies.RobloxAppLocales.Localization
local LocalizationProvider = dependencies.LocalizationProvider
local Roact = dependencies.Roact

local localization = Localization.new("en-us")

return function(element, props)
	if props and props.controls and props.controls.langauge then
		localization:SetLocale(props.controls.language)
	end

	return Roact.createElement(LocalizationProvider, {
		localization = localization,
	}, {
		TestElement1 = Roact.createElement(element, props),
	})
end
