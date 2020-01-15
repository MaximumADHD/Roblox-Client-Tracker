--[[
	Displays panels associated with the Add tool
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local BaseBrush = require(Plugin.Src.Components.Tools.BaseBrush)

local Actions = Plugin.Src.Actions
local ApplyToolAction = require(Actions.ApplyToolAction)
local ChooseBrushShape = require(Actions.ChooseBrushShape)
local ChangeBaseSize = require(Actions.ChangeBaseSize)
local ChangeHeight = require(Actions.ChangeHeight)
local ChangePivot = require(Actions.ChangePivot)
local SetSnapToGrid = require(Actions.SetSnapToGrid)
local SetIgnoreWater = require(Actions.SetIgnoreWater)
local SetAutoMaterial = require(Actions.SetAutoMaterial)
local SetMaterial = require(Actions.SetMaterial)
local SetBaseSizeHeightLocked = require(Actions.SetBaseSizeHeightLocked)

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)

local FFlagTerrainToolsRefactor = game:GetFastFlag("TerrainToolsRefactor")

local REDUCER_KEY = "AddTool"

local function mapStateToProps(state, props)
	return {
		toolName = TerrainEnums.ToolId.Add,

		brushShape = state[REDUCER_KEY].brushShape,
		baseSize = state[REDUCER_KEY].baseSize,
		height = state[REDUCER_KEY].height,
		baseSizeHeightLocked = state[REDUCER_KEY].baseSizeHeightLocked,
		pivot = state[REDUCER_KEY].pivot,
		snapToGrid = state[REDUCER_KEY].snapToGrid,
		ignoreWater = state[REDUCER_KEY].ignoreWater,

		autoMaterial = state[REDUCER_KEY].autoMaterial,
		material = state[REDUCER_KEY].material,
	}
end

local function mapDispatchToProps(dispatch)
	local dispatchToAdd = function(action)
		dispatch(ApplyToolAction(REDUCER_KEY, action))
	end

	return {
		dispatchChooseBrushShape = function (shape)
			dispatchToAdd(ChooseBrushShape(shape))
		end,
		dispatchChangeBaseSize = function (size)
			dispatchToAdd(ChangeBaseSize(size))
		end,
		dispatchChangeHeight = function (height)
			dispatchToAdd(ChangeHeight(height))
		end,
		dispatchChangePivot = function (pivot)
			dispatchToAdd(ChangePivot(pivot))
		end,
		dispatchSetSnapToGrid = function (snapToGrid)
			dispatchToAdd(SetSnapToGrid(snapToGrid))
		end,
		dispatchSetAutoMaterial = function (autoMaterial)
			dispatchToAdd(SetAutoMaterial(autoMaterial))
		end,
		dispatchSetIgnoreWater = function (ignoreWater)
			dispatchToAdd(SetIgnoreWater(ignoreWater))
		end,
		dispatchSetMaterial = function (material)
			dispatchToAdd(SetMaterial(material))
		end,
		dispatchSetBaseSizeHeightLocked = function (locked)
			dispatchToAdd(SetBaseSizeHeightLocked(locked))
		end,
	}
end

if FFlagTerrainToolsRefactor then
	return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(BaseBrush)
else
	local AddTool = RoactRodux.connect(mapStateToProps, mapDispatchToProps)(BaseBrush)

	return function(props)
		return Roact.createElement(AddTool)
	end
end
