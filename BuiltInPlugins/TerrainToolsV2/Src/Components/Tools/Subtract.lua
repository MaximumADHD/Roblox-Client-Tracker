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
local SetEditPlaneMode = require(Actions.SetEditPlaneMode)
local SetIgnoreWater = require(Actions.SetIgnoreWater)
local SetIgnoreParts = require(Actions.SetIgnoreParts)
local SetPlaneCFrame = require(Actions.SetPlaneCFrame)
local SetPlaneLock = require(Actions.SetPlaneLock)
local SetSnapToGrid = require(Actions.SetSnapToGrid)

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)

local REDUCER_KEY = "SubtractTool"

local function mapStateToProps(state, props)
	return {
		toolName = TerrainEnums.ToolId.Subtract,

		baseSize = state[REDUCER_KEY].baseSize,
		baseSizeHeightLocked = state[REDUCER_KEY].baseSizeHeightLocked,
		brushShape = state[REDUCER_KEY].brushShape,
		height = state[REDUCER_KEY].height,
		ignoreWater = state[REDUCER_KEY].ignoreWater,
		ignoreParts = state[REDUCER_KEY].ignoreParts,
		pivot = state[REDUCER_KEY].pivot,
		planeLock = state[REDUCER_KEY].planeLock,
		snapToGrid = state[REDUCER_KEY].snapToGrid,
		editPlaneMode = state[REDUCER_KEY].editPlaneMode,
		planeCFrame = state[REDUCER_KEY].planeCFrame,
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
		dispatchSetIgnoreParts = function(ignoreParts)
			dispatchToSubtract(SetIgnoreParts(ignoreParts))
		end,
		dispatchSetPlaneLock = function(planeLock)
			dispatchToSubtract(SetPlaneLock(planeLock))
		end,
		dispatchSetEditPlaneMode = function(editPlaneMode)
			dispatchToSubtract(SetEditPlaneMode(editPlaneMode))
		end,
		dispatchSetPlaneCFrame = function(planeCFrame)
			dispatchToSubtract(SetPlaneCFrame(planeCFrame))
		end,
		dispatchSetSnapToGrid = function (snapToGrid)
			dispatchToSubtract(SetSnapToGrid(snapToGrid))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(BaseBrush)
