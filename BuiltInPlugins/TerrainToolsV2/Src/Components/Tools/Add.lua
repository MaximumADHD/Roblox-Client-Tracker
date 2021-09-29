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
local SetEditPlaneMode = require(Actions.SetEditPlaneMode)
local SetIgnoreWater = require(Actions.SetIgnoreWater)
local SetIgnoreParts = require(Actions.SetIgnoreParts)
local SetMaterial = require(Actions.SetMaterial)
local SetPlaneCFrame = require(Actions.SetPlaneCFrame)
local SetPlaneLock = require(Actions.SetPlaneLock)
local SetSnapToGrid = require(Actions.SetSnapToGrid)

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)

local REDUCER_KEY = "AddTool"

local function mapStateToProps(state, props)
	return {
		toolName = TerrainEnums.ToolId.Add,

		autoMaterial = state[REDUCER_KEY].autoMaterial,
		baseSize = state[REDUCER_KEY].baseSize,
		baseSizeHeightLocked = state[REDUCER_KEY].baseSizeHeightLocked,
		brushShape = state[REDUCER_KEY].brushShape,
		height = state[REDUCER_KEY].height,
		ignoreWater = state[REDUCER_KEY].ignoreWater,
		ignoreParts = state[REDUCER_KEY].ignoreParts,
		material = state[REDUCER_KEY].material,
		pivot = state[REDUCER_KEY].pivot,
		planeLock = state[REDUCER_KEY].planeLock,
		snapToGrid = state[REDUCER_KEY].snapToGrid,
		editPlaneMode = state[REDUCER_KEY].editPlaneMode,
		planeCFrame = state[REDUCER_KEY].planeCFrame,
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
		dispatchSetIgnoreParts = function(ignoreParts)
			dispatchToAdd(SetIgnoreParts(ignoreParts))
		end,
		dispatchSetMaterial = function (material)
			dispatchToAdd(SetMaterial(material))
		end,
		dispatchChangePivot = function (pivot)
			dispatchToAdd(ChangePivot(pivot))
		end,
		dispatchSetPlaneLock = function(planeLock)
			dispatchToAdd(SetPlaneLock(planeLock))
		end,
		dispatchSetEditPlaneMode = function(editPlaneMode)
			dispatchToAdd(SetEditPlaneMode(editPlaneMode))
		end,
		dispatchSetPlaneCFrame = function(planeCFrame)
			dispatchToAdd(SetPlaneCFrame(planeCFrame))
		end,
		dispatchSetSnapToGrid = function (snapToGrid)
			dispatchToAdd(SetSnapToGrid(snapToGrid))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(BaseBrush)
