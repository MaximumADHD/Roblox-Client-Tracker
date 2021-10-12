--[[
	Displays panels associated with the Grow tool
]]
local FFlagTerrainToolsGlobalState = game:GetFastFlag("TerrainToolsGlobalState")
local FFlagTerrainToolsGlobalPlaneLockState = game:GetFastFlag("TerrainToolsGlobalPlaneLockState")

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
local SetAutoMaterial = require(Actions.SetAutoMaterial)
local SetBaseSizeHeightLocked = require(Actions.SetBaseSizeHeightLocked)
local SetEditPlaneMode = require(Actions.SetEditPlaneMode)
local SetIgnoreWater = require(Actions.SetIgnoreWater)
local SetIgnoreParts = require(Actions.SetIgnoreParts)
local SetMaterial = require(Actions.SetMaterial)
local SetPlaneCFrame = require(Actions.SetPlaneCFrame)
local SetPlaneLock = require(Actions.SetPlaneLock)
local SetSnapToGrid = require(Actions.SetSnapToGrid)

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)

local REDUCER_KEY = FFlagTerrainToolsGlobalState and "BaseTool" or "GrowTool"
local PLANE_REDUCER_KEY = FFlagTerrainToolsGlobalPlaneLockState and "BaseTool" or REDUCER_KEY

local function mapStateToProps(state, props)
	return {
		toolName = TerrainEnums.ToolId.Grow,

		autoMaterial = state[REDUCER_KEY].autoMaterial,
		baseSize = state[REDUCER_KEY].baseSize,
		baseSizeHeightLocked = state[REDUCER_KEY].baseSizeHeightLocked,
		brushShape = state[REDUCER_KEY].brushShape,
		height = state[REDUCER_KEY].height,
		ignoreWater = state[REDUCER_KEY].ignoreWater,
		ignoreParts = state[REDUCER_KEY].ignoreParts,
		material = state[REDUCER_KEY].material,
		pivot = state[REDUCER_KEY].pivot,
		planeLock = state[PLANE_REDUCER_KEY].planeLock,
		snapToGrid = state[REDUCER_KEY].snapToGrid,
		strength = state[REDUCER_KEY].strength,
		editPlaneMode = state[PLANE_REDUCER_KEY].editPlaneMode,
		planeCFrame = state[PLANE_REDUCER_KEY].planeCFrame,
	}
end

local function mapDispatchToProps(dispatch)
	local dispatchToGrow = function(action)
		dispatch(ApplyToolAction(REDUCER_KEY, action))
	end

	local dispatchToBase
	if FFlagTerrainToolsGlobalPlaneLockState then
		function dispatchToBase(action)
			dispatch(ApplyToolAction(PLANE_REDUCER_KEY, action))
		end
	else
		dispatchToBase = dispatchToGrow
	end
	return {
		dispatchChangeBaseSize = function (size)
			dispatchToGrow(ChangeBaseSize(size))
		end,
		dispatchChangeHeight = function (height)
			dispatchToGrow(ChangeHeight(height))
		end,
		dispatchChangePivot = function (pivot)
			dispatchToGrow(ChangePivot(pivot))
		end,
		dispatchChangeStrength = function (strength)
			dispatchToGrow(ChangeStrength(strength))
		end,
		dispatchChooseBrushShape = function (shape)
			dispatchToGrow(ChooseBrushShape(shape))
		end,
		dispatchSetAutoMaterial = function (autoMaterial)
			dispatchToGrow(SetAutoMaterial(autoMaterial))
		end,
		dispatchSetBaseSizeHeightLocked = function (locked)
			dispatchToGrow(SetBaseSizeHeightLocked(locked))
		end,
		dispatchSetIgnoreWater = function (ignoreWater)
			dispatchToGrow(SetIgnoreWater(ignoreWater))
		end,
		dispatchSetIgnoreParts = function(ignoreParts)
			dispatchToGrow(SetIgnoreParts(ignoreParts))
		end,
		dispatchSetMaterial = function (material)
			dispatchToGrow(SetMaterial(material))
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
		dispatchSetSnapToGrid = function (snapToGrid)
			dispatchToGrow(SetSnapToGrid(snapToGrid))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(BaseBrush)
