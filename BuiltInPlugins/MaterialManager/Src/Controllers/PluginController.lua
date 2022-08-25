local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Framework = require(Plugin.Packages.Framework)

local Actions = Plugin.Src.Actions
local SetMaterialAsTool = require(Actions.SetMaterialAsTool)
local SetMaterialTileSize = require(Actions.SetMaterialTileSize)
local SetViewType = require(Actions.SetViewType)

local GeneralServiceController = require(Plugin.Src.Controllers.GeneralServiceController)

local Util = Plugin.Src.Util
local SetHighlight = require(Util.SetHighlight)

local ContextItem = Framework.ContextServices.ContextItem

local DEFAULT_CURSOR = "rbxasset://SystemCursors/Arrow"
local PAINT_CURSOR = "rbxasset://textures/FillCursor.png"

local PluginController = ContextItem:extend("PluginController")

function PluginController.new(plugin: any?, store: any?, mouse: any?, generalServiceController: any?, mock: boolean?)
	local self = setmetatable({
		_plugin = plugin,
		_store = store,
		_mouse = mouse,
		_generalServiceController = generalServiceController,

		_mock = mock,
	}, PluginController)

	self._mouseMoveConnection = nil
	self._mouseClickedConnection = nil
	self._deactivationConnection = nil

	return self
end

function PluginController.mock()
	return PluginController.new(nil, nil, GeneralServiceController.mock(), true)
end

function PluginController:initialize()
	if self._mock then
		return
	end

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
	if self._mock then
		return
	end

	self._plugin:SetSetting("MaterialTileSize", materialTileSize)
end

function PluginController:setViewType(viewType: string)
	if self._mock then
		return
	end

	self._plugin:SetSetting("ViewType", viewType)
end

function PluginController:toggleMaterialAsTool()
	if self._mock then
		return
	end

	self._plugin:Activate(true)
	self._store:dispatch(SetMaterialAsTool(true))
	local highlight = nil

	self._mouseMoveConnection = self._mouse.Move:Connect(function()
		if self._store:getState().MaterialBrowserReducer.Material then
			self._mouse.Icon = PAINT_CURSOR
			highlight = SetHighlight(highlight, self._mouse.Target)
		else
			self._mouse.Icon = DEFAULT_CURSOR
		end
	end)

	self._mouseClickedConnection = self._mouse.Button1Down:Connect(function()
		local material = self._store:getState().MaterialBrowserReducer.Material
		if material then
			self._mouse.Icon = PAINT_CURSOR
			self._generalServiceController:ApplyToBasePart(
				self._mouse.Target,
				material.Material,
				if material.MaterialVariant then material.MaterialVariant.Name else nil
			)
		end
	end)

	self._deactivationConnection = self._plugin.Deactivation:Connect(function()
		self._store:dispatch(SetMaterialAsTool(false))
		if highlight then
			highlight:Destroy()
		end
		self._mouse.Icon = DEFAULT_CURSOR

		if self._mouseMoveConnection then
			self._mouseMoveConnection:Disconnect()
			self._mouseMoveConnection = nil
		end
		
		if self._mouseClickedConnection then
			self._mouseClickedConnection:Disconnect()
			self._mouseClickedConnection = nil
		end

		if self._deactivationConnection then
			self._deactivationConnection:Disconnect()
			self._deactivationConnection = nil
		end
	end)
end

function PluginController:untoggleMaterialAsTool()
	if self._mock then
		return
	end

	self._plugin:Deactivate()
end

function PluginController:destroy()
	if self._mock then
		return
	end

	if self._mouseMoveConnection then
		self._mouseMoveConnection:Disconnect()
	end
	if self._mouseClickedConnection then
		self._mouseClickedConnection:Disconnect()
	end
	if self._deactivationConnection then
		self._deactivationConnection:Disconnect()
	end
end

return PluginController
