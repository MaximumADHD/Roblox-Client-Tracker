--[[
	Displays panels associated with the SeaLevel tool
]]

local FFlagTerrainToolsUseDevFramework = game:GetFastFlag("TerrainToolsUseDevFramework")

local Plugin = script.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local UILibrary = not FFlagTerrainToolsUseDevFramework and require(Plugin.Packages.UILibrary) or nil

local ContextServices = FFlagTerrainToolsUseDevFramework and Framework.ContextServices or nil
local ContextItems = FFlagTerrainToolsUseDevFramework and require(Plugin.Src.ContextItems) or nil

local withLocalization = not FFlagTerrainToolsUseDevFramework and UILibrary.Localizing.withLocalization or nil

local Actions = Plugin.Src.Actions
local ApplyToolAction = require(Actions.ApplyToolAction)
local ChangePosition = require(Actions.ChangePosition)
local ChangeSize = require(Actions.ChangeSize)

local ToolParts = script.Parent.ToolParts
local ButtonGroup = require(ToolParts.ButtonGroup)
local MapSettingsWithPreview = require(ToolParts.MapSettingsWithPreview)
local ProgressFrame = require(script.Parent.Parent.ProgressFrame)

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)

local TerrainInterface = not FFlagTerrainToolsUseDevFramework and require(Plugin.Src.ContextServices.TerrainInterface)
	or nil

local CoreGui = game:GetService("CoreGui")

local REDUCER_KEY = "SeaLevelTool"

local SeaLevel = Roact.PureComponent:extend(script.Name)

function SeaLevel:init()
	if not FFlagTerrainToolsUseDevFramework then
		self.seaLevel = TerrainInterface.getSeaLevel(self)
		assert(self.seaLevel, "SeaLevel requires Sealevel function from context")

		self.state = {
			isReplacing = self.seaLevel:isReplacing(),
			progress = self.seaLevel:getProgress(),
		}
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

	self.cancel = function()
		local seaLevel = FFlagTerrainToolsUseDevFramework and self.props.SeaLevel or self.seaLevel
		seaLevel:cancel()
	end
end

function SeaLevel:didMount()
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
end

function SeaLevel:willUnmount()
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
		MapSettingsWithPreview = Roact.createElement(MapSettingsWithPreview, {
			toolName = self.props.toolName,
			LayoutOrder = 1,

			Position = position,
			Size = size,

			OnPositionChanged = self.props.dispatchChangePosition,
			OnSizeChanged = self.props.dispatchChangeSize,
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
