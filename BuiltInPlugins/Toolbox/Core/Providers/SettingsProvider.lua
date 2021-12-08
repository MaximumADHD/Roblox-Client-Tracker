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

local SettingsProvider = Roact.PureComponent:extend("SettingsProvider")

function SettingsProvider:init(props)
	self._context[Keys.settings] = props.settings
end

function SettingsProvider:render()
	return Roact.oneChild(self.props[Roact.Children])
end

return SettingsProvider
