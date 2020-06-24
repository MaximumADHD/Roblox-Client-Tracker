-- This script puts localization object fetched from __context into
-- Roact UI tree, so if locale-id changes. The consumer can trigger
-- the descendants to re-render.

local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)

local Keys = require(Plugin.Core.Util.Keys)

local LocalizationProvider = Roact.PureComponent:extend("LocalizationProvider")

function LocalizationProvider:init(props)
	local localization = props.localization
	self._context[Keys.localization] = localization
end

function LocalizationProvider:render()
	return Roact.oneChild(self.props[Roact.Children])
end

function LocalizationProvider:willUnmount()
	local localization = self._context[Keys.localization]
	if localization then
		localization:destroy()
	end
end

return LocalizationProvider
