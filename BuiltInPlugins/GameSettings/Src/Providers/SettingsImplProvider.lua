local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)

local settingsImplKey = require(Plugin.Src.Keys.settingsImplKey)

local SettingsImplProvider = Roact.Component:extend("SettingsImplProvider")

function SettingsImplProvider:init(props)
	local impl = props.impl

	if impl == nil then
		error("Error initializing SettingsImplProvider. Expected an `impl` prop.")
	end

	self._context[settingsImplKey] = impl
end

function SettingsImplProvider:render()
	return Roact.oneChild(self.props[Roact.Children])
end

return SettingsImplProvider