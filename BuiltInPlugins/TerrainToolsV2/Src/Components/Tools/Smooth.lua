--[[
	Displays panels associated with the Smooth tool
]]
local FFlagTerrainToolsGlobalState = game:GetFastFlag("TerrainToolsGlobalState")

local Plugin = script.Parent.Parent.Parent.Parent

local RoactRodux = require(Plugin.Packages.RoactRodux)

local BaseBrush = require(Plugin.Src.Components.Tools.BaseBrush)

local Actions = Plugin.Src.Actions
local ApplyToolAction = require(Actions.ApplyToolAction)
local ChangeBaseSize = require(Actions.ChangeBaseSize)
local ChangeHeight = require(Actions.ChangeHeight)
local ChangePivot = require(Actions.ChangePivot)
local ChangeStrength = require(Actions.ChangeStrength)
local ChooseBrushShape = require(Actions.ChooseBrushShape)
local SetBaseSizeHeightLocked = require(Actions.SetBaseSizeHeightLocked)
local SetEditPlaneMode = require(Actions.SetEditPlaneMode)
local SetIgnoreWater = require(Actions.SetIgnoreWater)
local SetIgnoreParts = require(Actions.SetIgnoreParts)
local SetPlaneCFrame = require(Actions.SetPlaneCFrame)
local SetPlaneLock = require(Actions.SetPlaneLock)
local SetSnapToVoxels = require(Actions.SetSnapToVoxels)

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)

local REDUCER_KEY = FFlagTerrainToolsGlobalState and "BaseTool" or "SmoothTool"
local PLANE_REDUCER_KEY = "BaseTool"

local function mapStateToProps(state, props)
	return {
		toolName = TerrainEnums.ToolId.Smooth,

		baseSize = state[REDUCER_KEY].baseSize,
		baseSizeHeightLocked = state[REDUCER_KEY].baseSizeHeightLocked,
		brushShape = state[REDUCER_KEY].brushShape,
		height = state[REDUCER_KEY].height,
		ignoreWater = state[REDUCER_KEY].ignoreWater,
		ignoreParts = state[REDUCER_KEY].ignoreParts,
		pivot = state[REDUCER_KEY].pivot,
		planeLock = state[PLANE_REDUCER_KEY].planeLock,
		snapToVoxels = state[REDUCER_KEY].snapToVoxels,
		strength = state[REDUCER_KEY].strength,
		editPlaneMode = state[PLANE_REDUCER_KEY].editPlaneMode,
		planeCFrame = state[PLANE_REDUCER_KEY].planeCFrame,
	}
end

local function mapDispatchToProps(dispatch)
	local dispatchToSmooth = function(action)
		dispatch(ApplyToolAction(REDUCER_KEY, action))
	end

	local dispatchToBase = function(action)
		dispatch(ApplyToolAction(PLANE_REDUCER_KEY, action))
	end
	return {
		dispatchChangeBaseSize = function (size)
			dispatchToSmooth(ChangeBaseSize(size))
		end,
		dispatchChangeHeight = function (height)
			dispatchToSmooth(ChangeHeight(height))
		end,
		dispatchChangePivot = function (pivot)
			dispatchToSmooth(ChangePivot(pivot))
		end,
		dispatchChangeStrength = function (strength)
			dispatchToSmooth(ChangeStrength(strength))
		end,
		dispatchChooseBrushShape = function (shape)
			dispatchToSmooth(ChooseBrushShape(shape))
		end,
		dispatchSetBaseSizeHeightLocked = function (locked)
			dispatchToSmooth(SetBaseSizeHeightLocked(locked))
		end,
		dispatchSetIgnoreWater = function (ignoreWater)
			dispatchToSmooth(SetIgnoreWater(ignoreWater))
		end,
		dispatchSetIgnoreParts = function(ignoreParts)
			dispatchToSmooth(SetIgnoreParts(ignoreParts))
		end,
		dispatchSetPlaneLock = function (planeLock)
			dispatchToBase(SetPlaneLock(planeLock))
		end,
		dispatchSetEditPlaneMode = function(editPlaneMode)
			dispatchToBase(SetEditPlaneMode(editPlaneMode))
		end,
		dispatchSetPlaneCFrame = function(planeCFrame)
			dispatchToBase(SetPlaneCFrame(planeCFrame))
		end,
		dispatchSetSnapToVoxels = function(snapToVoxels)
			dispatchToSmooth(SetSnapToVoxels(snapToVoxels))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(BaseBrush)
