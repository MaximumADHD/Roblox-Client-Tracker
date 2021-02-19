--[[
	Displays panels associated with the Subtract tool
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
local SetBaseSizeHeightLocked = require(Actions.SetBaseSizeHeightLocked)
local SetIgnoreWater = require(Actions.SetIgnoreWater)
local SetPlaneLock = require(Actions.SetPlaneLock)
local SetSnapToGrid = require(Actions.SetSnapToGrid)

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)

local FFlagTerrainToolsAddHasPlaneLock = game:GetFastFlag("TerrainToolsAddHasPlaneLock")

local REDUCER_KEY = "SubtractTool"

local function mapStateToProps(state, props)
	local planeLock = nil
	if FFlagTerrainToolsAddHasPlaneLock then
		planeLock = state[REDUCER_KEY].planeLock
	end
	return {
		toolName = TerrainEnums.ToolId.Subtract,

		baseSize = state[REDUCER_KEY].baseSize,
		baseSizeHeightLocked = state[REDUCER_KEY].baseSizeHeightLocked,
		brushShape = state[REDUCER_KEY].brushShape,
		height = state[REDUCER_KEY].height,
		ignoreWater = state[REDUCER_KEY].ignoreWater,
		pivot = state[REDUCER_KEY].pivot,
		planeLock = planeLock,
		snapToGrid = state[REDUCER_KEY].snapToGrid,
	}
end

local function mapDispatchToProps (dispatch)
	local dispatchToSubtract = function(action)
		dispatch(ApplyToolAction(REDUCER_KEY, action))
	end

	return {
		dispatchChangeBaseSize = function (size)
			dispatchToSubtract(ChangeBaseSize(size))
		end,
		dispatchChangeHeight = function (height)
			dispatchToSubtract(ChangeHeight(height))
		end,
		dispatchChangePivot = function (pivot)
			dispatchToSubtract(ChangePivot(pivot))
		end,
		dispatchChooseBrushShape = function (shape)
			dispatchToSubtract(ChooseBrushShape(shape))
		end,
		dispatchSetBaseSizeHeightLocked = function (locked)
			dispatchToSubtract(SetBaseSizeHeightLocked(locked))
		end,
		dispatchSetIgnoreWater = function (ignoreWater)
			dispatchToSubtract(SetIgnoreWater(ignoreWater))
		end,
		dispatchSetPlaneLock = FFlagTerrainToolsAddHasPlaneLock and function(planeLock)
			dispatchToSubtract(SetPlaneLock(planeLock))
		end or nil,
		dispatchSetSnapToGrid = function (snapToGrid)
			dispatchToSubtract(SetSnapToGrid(snapToGrid))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(BaseBrush)
