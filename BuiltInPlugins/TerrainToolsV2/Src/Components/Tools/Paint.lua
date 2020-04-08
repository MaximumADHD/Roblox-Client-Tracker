--[[
	Displays panels associated with the Paint tool
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
local SetMaterial = require(Actions.SetMaterial)
local SetPlaneLock = require(Actions.SetPlaneLock)
local SetSnapToGrid = require(Actions.SetSnapToGrid)

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)

local REDUCER_KEY = "PaintTool"

local function mapStateToProps(state, props)
	return {
		toolName = TerrainEnums.ToolId.Paint,

		baseSize = state[REDUCER_KEY].baseSize,
		baseSizeHeightLocked = state[REDUCER_KEY].baseSizeHeightLocked,
		brushShape = state[REDUCER_KEY].brushShape,
		height = state[REDUCER_KEY].height,
		ignoreWater = state[REDUCER_KEY].ignoreWater,
		material = state[REDUCER_KEY].material,
		pivot = state[REDUCER_KEY].pivot,
		planeLock = state[REDUCER_KEY].planeLock,
		snapToGrid = state[REDUCER_KEY].snapToGrid,
	}
end

local function mapDispatchToProps(dispatch)
	local dispatchToPaint = function(action)
		dispatch(ApplyToolAction(REDUCER_KEY, action))
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
		dispatchSetMaterial = function (material)
			dispatchToPaint(SetMaterial(material))
		end,
		dispatchSetPlaneLock = function (planeLock)
			dispatchToPaint(SetPlaneLock(planeLock))
		end,
		dispatchSetSnapToGrid = function (snapToGrid)
			dispatchToPaint(SetSnapToGrid(snapToGrid))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(BaseBrush)
