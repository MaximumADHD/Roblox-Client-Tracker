--[[
	Wraps MapSettingsWithPreviewFragment inside a Panel called Map Settings
]]

local FFlagTerrainToolsUseDevFramework = game:GetFastFlag("TerrainToolsUseDevFramework")
local FFlagTerrainToolsUseMapSettingsWithPreview = game:GetFastFlag("TerrainToolsUseMapSettingsWithPreview2")

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Cryo = require(Plugin.Packages.Cryo)
local Roact = require(Plugin.Packages.Roact)
local UILibrary = require(Plugin.Packages.UILibrary)

local ContextServices = FFlagTerrainToolsUseDevFramework and Framework.ContextServices or nil
local ContextItems = FFlagTerrainToolsUseDevFramework and require(Plugin.Src.ContextItems) or nil

local withLocalization = not FFlagTerrainToolsUseDevFramework and UILibrary.Localizing.withLocalization or nil

local StudioPlugin = not FFlagTerrainToolsUseDevFramework and require(Plugin.Src.ContextServices.StudioPlugin) or nil

local TerrainInterface = not FFlagTerrainToolsUseDevFramework and require(Plugin.Src.ContextServices.TerrainInterface)
	or nil

local LargeVoxelRegionPreview = require(Plugin.Src.TerrainWorldUI.LargeVoxelRegionPreview)

local ToolParts = script.Parent
local MapSettings = not FFlagTerrainToolsUseMapSettingsWithPreview and require(ToolParts.MapSettings) or nil
local MapSettingsWithPreviewFragment = require(ToolParts.MapSettingsWithPreviewFragment)
local Panel = require(ToolParts.Panel)

local MapSettingsWithPreview = Roact.PureComponent:extend(script.Name)

if FFlagTerrainToolsUseMapSettingsWithPreview then
	function MapSettingsWithPreview:_render(localization)
		local layoutOrder = self.props.LayoutOrder
		local isSubsection = self.props.isSubsection

		local fragmentProps = Cryo.Dictionary.join(self.props, {
			LayoutOrder = Cryo.None,
			isSubsection = Cryo.None,

			InitialLayoutOrder = 1,
		})

		return Roact.createElement(Panel, {
			LayoutOrder = layoutOrder,
			isSubsection = isSubsection,
			Title = localization:getText("MapSettings", "MapSettings"),
			Padding = UDim.new(0, 12),
		}, {
			MapSettingsWithPreviewFragment = Roact.createElement(MapSettingsWithPreviewFragment, fragmentProps),
		})
	end

	function MapSettingsWithPreview:render()
		if FFlagTerrainToolsUseDevFramework then
			return self:_render(self.props.Localization:get())
		else
			return withLocalization(function(localization)
				return self:_render(localization)
			end)
		end
	end

	if FFlagTerrainToolsUseDevFramework then
		ContextServices.mapToProps(MapSettingsWithPreview, {
			Localization = ContextItems.UILibraryLocalization,
		})
	end
else
	function MapSettingsWithPreview:init()
		self.pluginActivationController = TerrainInterface.getPluginActivationController(self)
		assert(self.pluginActivationController, "MapSettingsWithPreview requires a PluginActivationController from context")

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

	function MapSettingsWithPreview:updatePreview()
		assert(self.preview, "MapSettingsWithPreview preview is nil")
		local position = Vector3.new(self.props.Position.X, self.props.Position.Y, self.props.Position.Z)
		local size = Vector3.new(self.props.Size.X, self.props.Size.Y, self.props.Size.Z)
		if FFlagTerrainToolsUseMapSettingsWithPreview and self.props.PreviewOffset then
			position = position + size * self.props.PreviewOffset
		end
		self.preview:setSizeAndPosition(size, position)
	end

	function MapSettingsWithPreview:didMount()
		local plugin = StudioPlugin.getPlugin(self)
		local mouse = plugin:GetMouse()
		assert(not self.preview, "MapSettingsWithPreview preview already exists")
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

	function MapSettingsWithPreview:didUpdate()
		self:updatePreview()
	end

	function MapSettingsWithPreview:willUnmount()
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

	function MapSettingsWithPreview:render()
		local props = Cryo.Dictionary.join(self.props, {
			OnPositionChanged = self.onPositionChanged,
			OnSizeChanged = self.onSizeChanged,
			SetWarnings = Cryo.None,
			toolName = Cryo.None,
		})
		return Roact.createElement(MapSettings, props)
	end
end

return MapSettingsWithPreview
