--[[
	Displays panels associated with the SeaLevel tool
]]

local FFlagTerrainToolsUseDevFramework = game:GetFastFlag("TerrainToolsUseDevFramework")
local FFlagTerrainToolsUseMapSettingsWithPreview = game:GetFastFlag("TerrainToolsUseMapSettingsWithPreview2")

local Plugin = script.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Cryo = require(Plugin.Packages.Cryo)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local UILibrary = not FFlagTerrainToolsUseDevFramework and require(Plugin.Packages.UILibrary) or nil

local ContextServices = FFlagTerrainToolsUseDevFramework and Framework.ContextServices or nil
local ContextItems = FFlagTerrainToolsUseDevFramework and require(Plugin.Src.ContextItems) or nil

local withLocalization = not FFlagTerrainToolsUseDevFramework and UILibrary.Localizing.withLocalization or nil

local StudioPlugin = not FFlagTerrainToolsUseDevFramework and require(Plugin.Src.ContextServices.StudioPlugin) or nil

local Actions = Plugin.Src.Actions
local ApplyToolAction = require(Actions.ApplyToolAction)
local ChangePosition = require(Actions.ChangePosition)
local ChangeSize = require(Actions.ChangeSize)

local ToolParts = script.Parent.ToolParts
local ButtonGroup = require(ToolParts.ButtonGroup)
local MapSettings = not FFlagTerrainToolsUseMapSettingsWithPreview and require(ToolParts.MapSettings) or nil
local MapSettingsWithPreview = require(ToolParts.MapSettingsWithPreview)
local ProgressFrame = require(script.Parent.Parent.ProgressFrame)

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local ToolId = TerrainEnums.ToolId

local LargeVoxelRegionPreview = require(Plugin.Src.TerrainWorldUI.LargeVoxelRegionPreview)

local TerrainInterface = not FFlagTerrainToolsUseDevFramework and require(Plugin.Src.ContextServices.TerrainInterface)
	or nil

local CoreGui = game:GetService("CoreGui")

local REDUCER_KEY = "SeaLevelTool"

local SeaLevel = Roact.PureComponent:extend(script.Name)

function SeaLevel:init()
	if not FFlagTerrainToolsUseDevFramework then
		if not FFlagTerrainToolsUseMapSettingsWithPreview then
			local plugin = StudioPlugin.getPlugin(self)
			local mouse = plugin:GetMouse()

			self.preview = LargeVoxelRegionPreview.new(mouse, TerrainInterface.getTerrain(self))
			self.pluginActivationController = TerrainInterface.getPluginActivationController(self)

			assert(self.pluginActivationController, "SeaLevel requires a PluginActivationController from context")
		end

		self.seaLevel = TerrainInterface.getSeaLevel(self)
		assert(self.seaLevel, "SeaLevel requires Sealevel function from context")

		self.state = {
			isReplacing = self.seaLevel:isReplacing(),
			progress = self.seaLevel:getProgress(),
		}
	end

	if not FFlagTerrainToolsUseMapSettingsWithPreview then
		self.onPositionChanged = function(_, axis, text, isValid)
			if isValid then
				self.props.dispatchChangePosition(Cryo.Dictionary.join(self.props.Position, {
					[axis] = text,
				}))
			end
		end

		self.onSizeChanged = function(_, axis, text, isValid)
			if isValid then
				self.props.dispatchChangeSize(Cryo.Dictionary.join(self.props.Size, {
					[axis] = text,
				}))
			end
		end
	end

	self.tryGenerateSeaLevel = function()
		local position = Vector3.new(self.props.Position.X,self.props.Position.Y,self.props.Position.Z)
		local size = Vector3.new(self.props.Size.X,self.props.Size.Y,self.props.Size.Z)

		local seaLevel = FFlagTerrainToolsUseDevFramework and self.props.SeaLevel or self.seaLevel
		seaLevel:replaceMaterial(position, size, Enum.Material.Air, Enum.Material.Water)
	end

	self.tryEvaporateSeaLevel = function()
		local position = Vector3.new(self.props.Position.X,self.props.Position.Y,self.props.Position.Z)
		local size = Vector3.new(self.props.Size.X,self.props.Size.Y,self.props.Size.Z)

		local seaLevel = FFlagTerrainToolsUseDevFramework and self.props.SeaLevel or self.seaLevel
		seaLevel:replaceMaterial(position, size, Enum.Material.Water, Enum.Material.Air)
	end

	if not FFlagTerrainToolsUseMapSettingsWithPreview then
		self.updatePreview = function()
			local position = Vector3.new(self.props.Position.X,self.props.Position.Y,self.props.Position.Z)
			local size = Vector3.new(self.props.Size.X,self.props.Size.Y,self.props.Size.Z)
			self.preview:setSizeAndPosition(size, position)
		end
	end

	self.cancel = function()
		local seaLevel = FFlagTerrainToolsUseDevFramework and self.props.SeaLevel or self.seaLevel
		seaLevel:cancel()
	end

	if not FFlagTerrainToolsUseMapSettingsWithPreview then
		-- When my tool becomes active, we want to run the terrain brush
		self.onToolActivatedConnection = self.pluginActivationController:subscribeToToolActivated(function()
			-- :getActiveTool() returns ToolId.None if no tool is selected, so this works in that case too
			if self.pluginActivationController:getActiveTool() == ToolId.SeaLevel then
				self:updatePreview()
				self.preview:updateVisibility(true)
			end
		end)

		self.onToolDeactivatedConnection = self.pluginActivationController:subscribeToToolDeactivated(function(toolId)
			if toolId == ToolId.SeaLevel then
				self.preview:updateVisibility(false)
			end
		end)
	end
end

if not FFlagTerrainToolsUseMapSettingsWithPreview then
	function SeaLevel:didUpdate()
		self:updatePreview()
	end
end

function SeaLevel:didMount()
	if not FFlagTerrainToolsUseMapSettingsWithPreview then
		self._onSizeChangeConnect = self.preview:getOnSizeChanged():Connect(function(size, position)
			-- move values from preview to rodux
			self.props.dispatchChangePosition({X = position.x, Y = position.y, Z = position.z})
			self.props.dispatchChangeSize({X = size.x, Y = size.y, Z = size.z})
		end)
	end

	if not FFlagTerrainToolsUseDevFramework then
		self.onProgressChanged = self.seaLevel:subscribeToProgressChange(function(progress)
			self:setState({
				progress = progress
			})
		end)

		self.onStateChanged = self.seaLevel:subscribeToStateChange(function(state)
			self:setState({
				isReplacing = state
			})
		end)
	end

	if not FFlagTerrainToolsUseMapSettingsWithPreview then
		self:updatePreview()
	end
end

function SeaLevel:willUnmount()
	if not FFlagTerrainToolsUseMapSettingsWithPreview then
		if self._onSizeChangeConnect then
			self._onSizeChangeConnect:Disconnect()
			self._onSizeChangeConnect = nil
		end

		if self.onToolActivatedConnection then
			self.onToolActivatedConnection:Disconnect()
			self.onToolActivatedConnection = nil
		end

		if self.onToolDeactivatedConnection then
			self.onToolDeactivatedConnection:Disconnect()
			self.onToolDeactivatedConnection = nil
		end
	end

	if not FFlagTerrainToolsUseDevFramework then
		if self.onProgressChanged then
			self.onProgressChanged:Disconnect()
			self.onProgressChanged = nil
		end

		if self.onStateChanged then
			self.onStateChanged:Disconnect()
			self.onStateChanged = nil
		end
	end

	if not FFlagTerrainToolsUseMapSettingsWithPreview then
		self.preview:destroy()
		self.preview = nil
	end
end

function SeaLevel:_render(localization)
	local position = self.props.Position
	local size = self.props.Size

	local isReplacing
	local progress
	if FFlagTerrainToolsUseDevFramework then
		isReplacing = self.props.SeaLevel:isReplacing()
		progress = isReplacing and self.props.SeaLevel:getProgress() or 0
	else
		isReplacing = self.state.isReplacing
		progress = self.state.progress
	end

	return Roact.createFragment({
		MapSettingsWithPreview = FFlagTerrainToolsUseMapSettingsWithPreview and Roact.createElement(MapSettingsWithPreview, {
			toolName = self.props.toolName,
			LayoutOrder = 1,

			Position = position,
			Size = size,

			OnPositionChanged = self.props.dispatchChangePosition,
			OnSizeChanged = self.props.dispatchChangeSize,
		}),

		MapSettings = not FFlagTerrainToolsUseMapSettingsWithPreview and Roact.createElement(MapSettings, {
			LayoutOrder = 1,

			Position = position,
			Size = size,

			OnPositionChanged = self.onPositionChanged,
			OnSizeChanged = self.onSizeChanged,
		}),

		SeaLevelButtons = Roact.createElement(ButtonGroup, {
			LayoutOrder = 2,
			Buttons = {
				{
					Key = "Evaporate",
					Name = localization:getText("SeaLevel", "Evaporate"),
					Active = not isReplacing,
					OnClicked = self.tryEvaporateSeaLevel
				},
				{
					Key = "Create",
					Name = localization:getText("SeaLevel", "Create"),
					Active = not isReplacing,
					OnClicked = self.tryGenerateSeaLevel
				},
			}
		}),

		ProgressBar = isReplacing and Roact.createElement(Roact.Portal, {
			target = CoreGui,
		}, {
			SeaLevelProgressScreenGui = Roact.createElement("ScreenGui", {}, {
				Roact.createElement(ProgressFrame, {
					AnchorPoint = Vector2.new(0.5, 0),
					Position = UDim2.new(0.5, 0, 0, 0),
					Progress = progress,
					OnCancelButtonClicked = self.cancel,
				})
			})
		})
	})
end

function SeaLevel:render()
	if FFlagTerrainToolsUseDevFramework then
		return self:_render(self.props.Localization:get())
	else
		return withLocalization(function(localization)
			return self:_render(localization)
		end)
	end
end

if FFlagTerrainToolsUseDevFramework then
	ContextServices.mapToProps(SeaLevel, {
		Mouse = ContextServices.Mouse,
		Localization = ContextItems.UILibraryLocalization,
		Terrain = ContextItems.Terrain,
		PluginActivationController = ContextItems.PluginActivationController,
		SeaLevel = ContextItems.SeaLevel,
	})
end

local function mapStateToProps(state, props)
	return {
		toolName = TerrainEnums.ToolId.SeaLevel,

		Position = state[REDUCER_KEY].position,
		Size = state[REDUCER_KEY].size,
	}
end

local function mapDispatchToProps(dispatch)
	local dispatchToSeaLevel = function(action)
		dispatch(ApplyToolAction(REDUCER_KEY, action))
	end

	return {
		dispatchChangePosition = function (position)
			dispatchToSeaLevel(ChangePosition(position))
		end,
		dispatchChangeSize = function(size)
			dispatchToSeaLevel(ChangeSize(size))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(SeaLevel)
