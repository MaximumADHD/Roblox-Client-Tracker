--[[
	Displays panels associated with the SeaLevel tool
]]
local FFlagTerrainToolsGlobalState = game:GetFastFlag("TerrainToolsGlobalState")
local FFlagRemoveUILibraryCompatLocalization = game:GetFastFlag("RemoveUILibraryCompatLocalization")

local Plugin = script.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local ContextItems = require(Plugin.Src.ContextItems)

local Actions = Plugin.Src.Actions
local ApplyToolAction = require(Actions.ApplyToolAction)
local ChangePosition = require(Actions.ChangePosition)
local ChangeSize = require(Actions.ChangeSize)

local ToolParts = script.Parent.ToolParts
local ButtonGroup = require(ToolParts.ButtonGroup)
local MapSettingsWithPreview = require(ToolParts.MapSettingsWithPreview)
local ProgressDialog = require(Plugin.Src.Components.ProgressDialog)

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)

local REDUCER_KEY = FFlagTerrainToolsGlobalState and "BaseTool" or "SeaLevelTool"

local SeaLevel = Roact.PureComponent:extend(script.Name)

function SeaLevel:init()
	self.tryGenerateSeaLevel = function()
		local position = Vector3.new(self.props.Position.X,self.props.Position.Y,self.props.Position.Z)
		local size = Vector3.new(self.props.Size.X,self.props.Size.Y,self.props.Size.Z)

		self.props.SeaLevel:replaceMaterial(position, size, Enum.Material.Air, Enum.Material.Water, self.props.toolName)
	end

	self.tryEvaporateSeaLevel = function()
		local position = Vector3.new(self.props.Position.X,self.props.Position.Y,self.props.Position.Z)
		local size = Vector3.new(self.props.Size.X,self.props.Size.Y,self.props.Size.Z)

		self.props.SeaLevel:replaceMaterial(position, size, Enum.Material.Water, Enum.Material.Air, self.props.toolName)
	end

	self.cancel = function()
		self.props.SeaLevel:cancel()
	end
end

function SeaLevel:render()
	local localization = if FFlagRemoveUILibraryCompatLocalization then self.props.Localization else self.props.Localization:get()

	local position = self.props.Position
	local size = self.props.Size

	local isReplacing = self.props.SeaLevel:isReplacing()
	local progress = isReplacing and self.props.SeaLevel:getProgress() or 0

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

		ProgressDialog = isReplacing and Roact.createElement(ProgressDialog, {
			Title = localization:getText("SeaLevel", "SeaLevelProgressTitle"),
			SubText = localization:getText("Replace", "Replacing"),

			Progress = progress,

			OnCancelButtonClicked = self.cancel,
		}),
	})
end

SeaLevel = withContext({
	Localization = if FFlagRemoveUILibraryCompatLocalization then ContextServices.Localization else ContextItems.UILibraryLocalization,
	SeaLevel = ContextItems.SeaLevel,
})(SeaLevel)

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
