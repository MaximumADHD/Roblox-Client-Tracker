--[[
	Displays panels associated with the Add tool
]]

local Plugin = script.Parent.Parent.Parent.Parent

local RoactRodux = require(Plugin.Packages.RoactRodux)

local BaseBrush = require(Plugin.Src.Components.Tools.BaseBrush)

local Actions = Plugin.Src.Actions
local ApplyToolAction = require(Actions.ApplyToolAction)
local ChangeBaseSize = require(Actions.ChangeBaseSize)
local ChangeHeight = require(Actions.ChangeHeight)
local ChangePivot = require(Actions.ChangePivot)
local ChooseBrushShape = require(Actions.ChooseBrushShape)
local SetAutoMaterial = require(Actions.SetAutoMaterial)
local SetBaseSizeHeightLocked = require(Actions.SetBaseSizeHeightLocked)
local SetIgnoreWater = require(Actions.SetIgnoreWater)
local SetMaterial = require(Actions.SetMaterial)
local SetPlaneLock = require(Actions.SetPlaneLock)
local SetSnapToGrid = require(Actions.SetSnapToGrid)

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)

local FFlagTerrainToolsAddHasPlaneLock = game:GetFastFlag("TerrainToolsAddHasPlaneLock")

local REDUCER_KEY = "AddTool"

local function mapStateToProps(state, props)
	local planeLock = nil
	if FFlagTerrainToolsAddHasPlaneLock then
		planeLock = state[REDUCER_KEY].planeLock
	end
	return {
		toolName = TerrainEnums.ToolId.Add,

		autoMaterial = state[REDUCER_KEY].autoMaterial,
		baseSize = state[REDUCER_KEY].baseSize,
		baseSizeHeightLocked = state[REDUCER_KEY].baseSizeHeightLocked,
		brushShape = state[REDUCER_KEY].brushShape,
		height = state[REDUCER_KEY].height,
		ignoreWater = state[REDUCER_KEY].ignoreWater,
		material = state[REDUCER_KEY].material,
		pivot = state[REDUCER_KEY].pivot,
		planeLock = planeLock,
		snapToGrid = state[REDUCER_KEY].snapToGrid,
	}
end

local function mapDispatchToProps(dispatch)
	local dispatchToAdd = function(action)
		dispatch(ApplyToolAction(REDUCER_KEY, action))
	end
	return {
		dispatchSetAutoMaterial = function (autoMaterial)
			dispatchToAdd(SetAutoMaterial(autoMaterial))
		end,
		dispatchChangeBaseSize = function (size)
			dispatchToAdd(ChangeBaseSize(size))
		end,
		dispatchSetBaseSizeHeightLocked = function (locked)
			dispatchToAdd(SetBaseSizeHeightLocked(locked))
		end,
		dispatchChooseBrushShape = function (shape)
			dispatchToAdd(ChooseBrushShape(shape))
		end,
		dispatchChangeHeight = function (height)
			dispatchToAdd(ChangeHeight(height))
		end,
		dispatchSetIgnoreWater = function (ignoreWater)
			dispatchToAdd(SetIgnoreWater(ignoreWater))
		end,
		dispatchSetMaterial = function (material)
			dispatchToAdd(SetMaterial(material))
		end,
		dispatchChangePivot = function (pivot)
			dispatchToAdd(ChangePivot(pivot))
		end,
		dispatchSetPlaneLock = FFlagTerrainToolsAddHasPlaneLock and function(planeLock)
			dispatchToAdd(SetPlaneLock(planeLock))
		end or nil,
		dispatchSetSnapToGrid = function (snapToGrid)
			dispatchToAdd(SetSnapToGrid(snapToGrid))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(BaseBrush)
