local UtilityRoot = script.Parent
local IAPExperienceRoot = UtilityRoot.Parent
local Packages = IAPExperienceRoot.Parent

local Roact = require(Packages.Roact)
local UIBlox = require(Packages.UIBlox)
local AppStyleProvider = UIBlox.App.Style.AppStyleProvider
local StyleConstants = UIBlox.App.Style.Constants

local DEFAULT_THEME = StyleConstants.ThemeName.Dark
local DEFAULT_FONT = StyleConstants.FontName.Gotham

local LocaleProvider = require(IAPExperienceRoot.Locale.LocaleProvider)

return function(elements)
	return Roact.createElement(LocaleProvider, {
		locale = "en-us",
		render = function()
			return Roact.createElement(AppStyleProvider, {
				style = {
					themeName = DEFAULT_THEME,
					fontName = DEFAULT_FONT,
				},
			}, {
				Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 1, 0),
				}, elements),
			})
		end,
	})
end
