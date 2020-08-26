--[[
	Fragment that wraps MapSettingsFragment to provide a preview box in 3d space.
	This box can be controlled either through the position/size input fields, or by dragging with the mouse.
	Requires the tool that uses this component to activate the plugin (so we can use the mouse).

Props
	toolName :          ToolId
	Position :          {X: number, Y: number, Z: number}
	Size :              {X: number, Y: number, Z: number}
	PreviewOffset :     Vector3 | nil
		How much to offset the position of the preview in 3d space as a ratio of its size.
		e.g. (0, 0.5, 0) -> "Position" represents the center of bottom face
	OnPositionChanged : ({X: number, Y: number, Z: number}) -> void
	OnSizeChanged :     ({X: number, Y: number, Z: number}) -> void
	SetWarnings :       ((bool) -> void) | nil
]]

local FFlagTerrainToolsUseMapSettingsWithPreview = game:GetFastFlag("TerrainToolsUseMapSettingsWithPreview2")

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Cryo = require(Plugin.Packages.Cryo)
local Roact = require(Plugin.Packages.Roact)

local StudioPlugin = require(Plugin.Src.ContextServices.StudioPlugin)

local LargeVoxelRegionPreview = require(Plugin.Src.TerrainWorldUI.LargeVoxelRegionPreview)

local TerrainInterface = require(Plugin.Src.ContextServices.TerrainInterface)

local ToolParts = script.Parent
local MapSettingsFragment = require(ToolParts.MapSettingsFragment)

local MapSettingsWithPreviewFragment = Roact.PureComponent:extend(script.Name)

function MapSettingsWithPreviewFragment:init()
	self.pluginActivationController = TerrainInterface.getPluginActivationController(self)
	assert(self.pluginActivationController,
		"MapSettingsWithPreviewFragment requires a PluginActivationController from context")

	-- Initialised in didMount
	self.preview = nil
	self.warnings = {}

	local function setWarning(vector, axis, warning)
		self.warnings = Cryo.Dictionary.join(self.warnings, {
			[vector .. axis] = warning,
		})
		if self.props.SetWarnings then
			self.props.SetWarnings(self.warnings)
		end
	end

	local function makeOnVectorAxisChanged(getCurrentValue, setNewValue)
		return function(vector, axis, text, isValid)
			if not isValid then
				setWarning(vector, axis, true)
				return
			end

			setWarning(vector, axis, false)
			setNewValue(Cryo.Dictionary.join(getCurrentValue(), {
				[axis] = text,
			}))
		end
	end

	self.onPositionChanged = makeOnVectorAxisChanged(function()
		return self.props.Position
	end, self.props.OnPositionChanged)

	self.onSizeChanged = makeOnVectorAxisChanged(function()
		return self.props.Size
	end, self.props.OnSizeChanged)
end

function MapSettingsWithPreviewFragment:updatePreview()
	assert(self.preview, "MapSettingsWithPreviewFragment preview is nil")
	local position = Vector3.new(self.props.Position.X, self.props.Position.Y, self.props.Position.Z)
	local size = Vector3.new(self.props.Size.X, self.props.Size.Y, self.props.Size.Z)
	if FFlagTerrainToolsUseMapSettingsWithPreview and self.props.PreviewOffset then
		position = position + size * self.props.PreviewOffset
	end
	self.preview:setSizeAndPosition(size, position)
end

function MapSettingsWithPreviewFragment:didMount()
	local plugin = StudioPlugin.getPlugin(self)
	local mouse = plugin:GetMouse()
	assert(not self.preview, "MapSettingsWithPreviewFragment preview already exists")
	self.preview = LargeVoxelRegionPreview.new(mouse, TerrainInterface.getTerrain(self))
	self:updatePreview()
	self.preview:updateVisibility(true)

	self.onPreviewSizeChangeConnect = self.preview:getOnSizeChanged():Connect(function(size, position)
		local adjustedPos = position
		if FFlagTerrainToolsUseMapSettingsWithPreview and self.props.PreviewOffset then
			adjustedPos = adjustedPos - size * self.props.PreviewOffset
		end

		self.props.OnPositionChanged({X = adjustedPos.x, Y = adjustedPos.y, Z = adjustedPos.z})
		self.props.OnSizeChanged({X = size.x, Y = size.y, Z = size.z})
	end)

	self.onToolActivatedConnection = self.pluginActivationController:subscribeToToolActivated(function()
		if self.pluginActivationController:getActiveTool() == self.props.toolName then
			self:updatePreview()
			self.preview:updateVisibility(true)
		end
	end)

	self.onToolDeactivatedConnection = self.pluginActivationController:subscribeToToolDeactivated(function(toolId)
		if toolId == self.props.toolName then
			self.preview:updateVisibility(false)
		end
	end)
end

function MapSettingsWithPreviewFragment:didUpdate()
	self:updatePreview()
end

function MapSettingsWithPreviewFragment:willUnmount()
	if self.onPreviewSizeChangeConnect then
		self.onPreviewSizeChangeConnect:disconnect()
		self.onPreviewSizeChangeConnect = nil
	end

	if self.onToolActivatedConnection then
		self.onToolActivatedConnection:disconnect()
		self.onToolActivatedConnection = nil
	end

	if self.onToolDeactivatedConnection then
		self.onToolDeactivatedConnection:disconnect()
		self.onToolDeactivatedConnection = nil
	end

	if self.preview then
		self.preview:destroy()
		self.preview = nil
	end
end

function MapSettingsWithPreviewFragment:render()
	local props = Cryo.Dictionary.join(self.props, {
		OnPositionChanged = self.onPositionChanged,
		OnSizeChanged = self.onSizeChanged,
		SetWarnings = Cryo.None,
		toolName = Cryo.None,
	})
	return Roact.createElement(MapSettingsFragment, props)
end

return MapSettingsWithPreviewFragment
