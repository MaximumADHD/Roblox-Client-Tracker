--[[
	Displays panels associated with the Erode tool
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

local REDUCER_KEY = FFlagTerrainToolsGlobalState and "BaseTool" or "ErodeTool"
local PLANE_REDUCER_KEY = "BaseTool"

local function mapStateToProps(state, props)
	return {
		toolName = TerrainEnums.ToolId.Erode,

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
	local dispatchToErode = function(action)
		dispatch(ApplyToolAction(REDUCER_KEY, action))
	end

	local dispatchToBase = function(action)
		dispatch(ApplyToolAction(PLANE_REDUCER_KEY, action))
	end
	return {
		dispatchChangeBaseSize = function (size)
			dispatchToErode(ChangeBaseSize(size))
		end,
		dispatchChangeHeight = function (height)
			dispatchToErode(ChangeHeight(height))
		end,
		dispatchChangePivot = function (pivot)
			dispatchToErode(ChangePivot(pivot))
		end,
		dispatchChangeStrength = function (strength)
			dispatchToErode(ChangeStrength(strength))
		end,
		dispatchChooseBrushShape = function (shape)
			dispatchToErode(ChooseBrushShape(shape))
		end,
		dispatchSetBaseSizeHeightLocked = function (locked)
			dispatchToErode(SetBaseSizeHeightLocked(locked))
		end,
		dispatchSetIgnoreWater = function (ignoreWater)
			dispatchToErode(SetIgnoreWater(ignoreWater))
		end,
		dispatchSetIgnoreParts = function(ignoreParts)
			dispatchToErode(SetIgnoreParts(ignoreParts))
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
			dispatchToErode(SetSnapToVoxels(snapToVoxels))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(BaseBrush)
