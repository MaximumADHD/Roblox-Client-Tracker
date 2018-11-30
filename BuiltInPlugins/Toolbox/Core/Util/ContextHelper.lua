local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)

local wrapStrictTable = require(Plugin.Core.Util.wrapStrictTable)

local LocalizationConsumer = require(Plugin.Core.Consumers.LocalizationConsumer)
local ModalConsumer = require(Plugin.Core.Consumers.ModalConsumer)
local ThemeConsumer = require(Plugin.Core.Consumers.ThemeConsumer)

local ContextHelper = {}

function ContextHelper.withLocalization(callback)
	return Roact.createElement(LocalizationConsumer, {
		render = callback,
	})
end

function ContextHelper.withModal(callback)
	return Roact.createElement(ModalConsumer, {
		render = callback,
	})
end

function ContextHelper.withTheme(callback)
	return Roact.createElement(ThemeConsumer, {
		render = callback,
	})
end

return wrapStrictTable(ContextHelper, "ContextHelper")
