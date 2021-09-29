--[[
	Displays panels associated with the Grow tool
]]
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
local PlaneLockType = TerrainEnums.PlaneLockType

local FFlagTerrainToolsEditPlaneLock = game:GetFastFlag("TerrainToolsEditPlaneLock")

local REDUCER_KEY = "GrowTool"

local function mapStateToProps(state, props)
	local planeLock

	-- (skuhne) TODO: remove and update with other adjustable plane lock tickets
	if FFlagTerrainToolsEditPlaneLock then
		planeLock = state[REDUCER_KEY].planeLock ~= PlaneLockType.Off
	else
		planeLock = state[REDUCER_KEY].planeLock
	end
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
		planeLock = planeLock,
		snapToGrid = state[REDUCER_KEY].snapToGrid,
		strength = state[REDUCER_KEY].strength,
		editPlaneMode = state[REDUCER_KEY].editPlaneMode,
		planeCFrame = state[REDUCER_KEY].planeCFrame,
	}
end

local function mapDispatchToProps(dispatch)
	local dispatchToGrow = function(action)
		dispatch(ApplyToolAction(REDUCER_KEY, action))
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
			dispatchToGrow(SetPlaneLock(planeLock))
		end,
		dispatchSetEditPlaneMode = function(editPlaneMode)
			dispatchToGrow(SetEditPlaneMode(editPlaneMode))
		end,
		dispatchSetPlaneCFrame = function(planeCFrame)
			dispatchToGrow(SetPlaneCFrame(planeCFrame))
		end,
		dispatchSetSnapToGrid = function (snapToGrid)
			dispatchToGrow(SetSnapToGrid(snapToGrid))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(BaseBrush)
