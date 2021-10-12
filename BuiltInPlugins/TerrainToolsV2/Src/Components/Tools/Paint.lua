--[[
	Displays panels associated with the Paint tool
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
local ChooseBrushShape = require(Actions.ChooseBrushShape)
local SetBaseSizeHeightLocked = require(Actions.SetBaseSizeHeightLocked)
local SetEditPlaneMode = require(Actions.SetEditPlaneMode)
local SetIgnoreWater = require(Actions.SetIgnoreWater)
local SetIgnoreParts = require(Actions.SetIgnoreParts)
local SetMaterial = require(Actions.SetMaterial)
local SetPlaneCFrame = require(Actions.SetPlaneCFrame)
local SetPlaneLock = require(Actions.SetPlaneLock)
local SetSnapToGrid = require(Actions.SetSnapToGrid)

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)

local REDUCER_KEY = FFlagTerrainToolsGlobalState and "BaseTool" or "PaintTool"
local PLANE_REDUCER_KEY = FFlagTerrainToolsGlobalPlaneLockState and "BaseTool" or REDUCER_KEY

local function mapStateToProps(state, props)
	return {
		toolName = TerrainEnums.ToolId.Paint,

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
		editPlaneMode = state[PLANE_REDUCER_KEY].editPlaneMode,
		planeCFrame = state[PLANE_REDUCER_KEY].planeCFrame,
	}
end

local function mapDispatchToProps(dispatch)
	local dispatchToPaint = function(action)
		dispatch(ApplyToolAction(REDUCER_KEY, action))
	end

	local dispatchToBase
	if FFlagTerrainToolsGlobalPlaneLockState then
		function dispatchToBase(action)
			dispatch(ApplyToolAction(PLANE_REDUCER_KEY, action))
		end
	else
		dispatchToBase = dispatchToPaint
	end
	return {
		dispatchChangeBaseSize = function (size)
			dispatchToPaint(ChangeBaseSize(size))
		end,
		dispatchChangeHeight = function (height)
			dispatchToPaint(ChangeHeight(height))
		end,
		dispatchChangePivot = function (pivot)
			dispatchToPaint(ChangePivot(pivot))
		end,
		dispatchChooseBrushShape = function (shape)
			dispatchToPaint(ChooseBrushShape(shape))
		end,
		dispatchSetBaseSizeHeightLocked = function (locked)
			dispatchToPaint(SetBaseSizeHeightLocked(locked))
		end,
		dispatchSetIgnoreWater = function (ignoreWater)
			dispatchToPaint(SetIgnoreWater(ignoreWater))
		end,
		dispatchSetIgnoreParts = function(ignoreParts)
			dispatchToPaint(SetIgnoreParts(ignoreParts))
		end,
		dispatchSetMaterial = function (material)
			dispatchToPaint(SetMaterial(material))
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
			dispatchToPaint(SetSnapToGrid(snapToGrid))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(BaseBrush)
