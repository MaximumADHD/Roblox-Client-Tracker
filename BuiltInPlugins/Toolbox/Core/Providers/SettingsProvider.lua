local Plugin = script.Parent.Parent.Parent

local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local settingsKey = require(Plugin.Core.Keys.settingsKey)

local SettingsProvider = Roact.PureComponent:extend("SettingsProvider")

function SettingsProvider:init(props)
	self._context[settingsKey] = props.settings
end

function SettingsProvider:render()
	return Roact.oneChild(self.props[Roact.Children])
end

return SettingsProvider
