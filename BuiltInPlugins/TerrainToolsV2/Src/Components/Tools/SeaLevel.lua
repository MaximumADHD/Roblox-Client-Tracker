--[[
	Displays panels associated with the SeaLevel tool
]]

local FFlagTerrainToolsUseMapSettingsWithPreview = game:GetFastFlag("TerrainToolsUseMapSettingsWithPreview")

local Plugin = script.Parent.Parent.Parent.Parent

local Cryo = require(Plugin.Packages.Cryo)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local UILibrary = require(Plugin.Packages.UILibrary)

local withLocalization = UILibrary.Localizing.withLocalization

local StudioPlugin = require(Plugin.Src.ContextServices.StudioPlugin)

local Actions = Plugin.Src.Actions
local ApplyToolAction = require(Actions.ApplyToolAction)
local ChangePosition = require(Actions.ChangePosition)
local ChangeSize = require(Actions.ChangeSize)

local ToolParts = script.Parent.ToolParts
local ButtonGroup = require(ToolParts.ButtonGroup)
local MapSettings = require(ToolParts.MapSettings)
local MapSettingsWithPreview = require(ToolParts.MapSettingsWithPreview)
local ProgressFrame = require(script.Parent.Parent.ProgressFrame)

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local ToolId = TerrainEnums.ToolId

local LargeVoxelRegionPreview = require(Plugin.Src.TerrainWorldUI.LargeVoxelRegionPreview)

local TerrainInterface = require(Plugin.Src.ContextServices.TerrainInterface)

local CoreGui = game:GetService("CoreGui")

local REDUCER_KEY = "SeaLevelTool"

local SeaLevel = Roact.PureComponent:extend(script.Name)

function SeaLevel:init()
	if not FFlagTerrainToolsUseMapSettingsWithPreview then
		local plugin = StudioPlugin.getPlugin(self)
		local mouse = plugin:GetMouse()

		self.preview = LargeVoxelRegionPreview.new(mouse, TerrainInterface.getTerrain(self))
		self.pluginActivationController = TerrainInterface.getPluginActivationController(self)

		assert(self.pluginActivationController, "SeaLevel requires a PluginActivationController from context")
	end

	self.seaLevel = TerrainInterface.getSeaLevel(self)

	self.state = {
		isReplacing = self.seaLevel:isReplacing(),
		progress = self.seaLevel:getProgress(),
	}

	assert(self.seaLevel, "SeaLevel requires Sealevel function from context")

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
		self.seaLevel:replaceMaterial(position, size, Enum.Material.Air, Enum.Material.Water)
	end

	self.tryEvaporateSeaLevel = function()
		local position = Vector3.new(self.props.Position.X,self.props.Position.Y,self.props.Position.Z)
		local size = Vector3.new(self.props.Size.X,self.props.Size.Y,self.props.Size.Z)
		self.seaLevel:replaceMaterial(position, size, Enum.Material.Water, Enum.Material.Air)
	end

	if not FFlagTerrainToolsUseMapSettingsWithPreview then
		self.updatePreview = function()
			local position = Vector3.new(self.props.Position.X,self.props.Position.Y,self.props.Position.Z)
			local size = Vector3.new(self.props.Size.X,self.props.Size.Y,self.props.Size.Z)
			self.preview:setSizeAndPosition(size, position)
		end
	end

	self.cancel = function()
		self.seaLevel:cancel()
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

	if self.onProgressChanged then
		self.onProgressChanged:Disconnect()
		self.onProgressChanged = nil
	end

	if self.onStateChanged then
		self.onStateChanged:Disconnect()
		self.onStateChanged = nil
	end

	if not FFlagTerrainToolsUseMapSettingsWithPreview then
		self.preview:destroy()
		self.preview = nil
	end
end

function SeaLevel:render()
	local position = self.props.Position
	local size = self.props.Size
	local progress = self.state.progress

	return withLocalization(function(localization)
		-- same as if the sealevel is currently active
		local isReplacing = self.state.isReplacing

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
			}),
		})
	end)
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
