local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
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
