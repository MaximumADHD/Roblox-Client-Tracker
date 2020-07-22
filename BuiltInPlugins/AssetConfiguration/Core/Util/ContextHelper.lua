-- This script will put consumers in the Roact component tree.
-- So consumers can get objects created in providers.

local Plugin = script.Parent.Parent.Parent
local Consumers = Plugin.Core.Consumers

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)

local wrapStrictTable = require(Plugin.Core.Util.wrapStrictTable)

local LocalizationConsumer = require(Consumers.LocalizationConsumer)
local ModalConsumer = require(Consumers.ModalConsumer)
local ThemeConsumer = require(Consumers.ThemeConsumer)

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
	-- TODO: Remove when non-devframework Theme is removed
	return Roact.createElement(ThemeConsumer, {
		render = callback,
	})
end

return wrapStrictTable(ContextHelper, "ContextHelper")
