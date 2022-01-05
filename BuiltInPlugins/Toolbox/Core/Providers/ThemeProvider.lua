local Plugin = script.Parent.Parent.Parent

local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
local Libs
if FFlagToolboxDeduplicatePackages then
	Libs = Plugin.Packages
else
	Libs = Plugin.Libs
end
local Roact = require(Libs.Roact)

local Keys = require(Plugin.Core.Util.Keys)

local ThemeProvider = Roact.Component:extend("ThemeProvider")

function ThemeProvider:init()
	self._context[Keys.theme] = self.props.theme
end

function ThemeProvider:render()
	return Roact.oneChild(self.props[Roact.Children])
end

function ThemeProvider:willUnmount()
	local theme = self._context[Keys.theme]
	if theme then
		theme:destroy()
	end
end

return ThemeProvider
