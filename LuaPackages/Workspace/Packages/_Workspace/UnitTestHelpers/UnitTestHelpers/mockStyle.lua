local Root = script.Parent
local Packages = Root.Parent

local UIBlox = require(Packages.UIBlox)
local Roact = require(Packages.Roact)

local DarkTheme = require(Packages.Style).Themes.DarkTheme
local Gotham = require(Packages.Style).Fonts.Gotham

return function(element)
	return Roact.createElement(UIBlox.Style.Provider, {
		style = {
			Theme = DarkTheme,
			Font = Gotham,
		},
	}, {
		TestElement = element,
	})
end
