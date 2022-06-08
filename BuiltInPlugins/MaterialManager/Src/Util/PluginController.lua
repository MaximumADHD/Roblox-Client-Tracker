local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Framework = require(Plugin.Packages.Framework)

local Actions = Plugin.Src.Actions
local SetMaterialTileSize = require(Actions.SetMaterialTileSize)
local SetViewType = require(Actions.SetViewType)

local ContextItem = Framework.ContextServices.ContextItem

local PluginController = ContextItem:extend("PluginController")

function PluginController.new(plugin: any, store: any)
	local self = setmetatable({
		_plugin = plugin,
		_store = store,
	}, PluginController)

	return self
end

function PluginController:initialize()
	local materialTileSize = self._plugin:GetSetting("MaterialTileSize")
	local viewType = self._plugin:GetSetting("ViewType")

	if materialTileSize then
		self._store:dispatch(SetMaterialTileSize(materialTileSize))
	end

	if viewType then
		self._store:dispatch(SetViewType(viewType))
	end
end

function PluginController:setMaterialTileSize(materialTileSize: number)
	self._plugin:SetSetting("MaterialTileSize", materialTileSize)
end

function PluginController:setViewType(viewType: string)
	self._plugin:SetSetting("ViewType", viewType)
end

return PluginController
