local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)

local settingsImplKey = require(Plugin.Src.Keys.settingsImplKey)

local SettingsImplProvider = Roact.Component:extend("SettingsImplProvider")

function SettingsImplProvider:init(props)
	local settingsImpl = props.settingsImpl

	if settingsImpl == nil then
		error("Error initializing SettingsImplProvider. Expected an `settingsImpl` prop.")
	end

	self._context[settingsImplKey] = settingsImpl
end

function SettingsImplProvider:render()
	return Roact.oneChild(self.props[Roact.Children])
end

return SettingsImplProvider