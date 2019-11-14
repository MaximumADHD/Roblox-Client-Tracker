--[[
	Displays panels associated with the Erode tool
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local BaseBrush = require(Plugin.Src.Components.Tools.BaseBrush)

local Actions = Plugin.Src.Actions
local ApplyToolAction = require(Actions.ApplyToolAction)
local ChooseBrushShape = require(Actions.ChooseBrushShape)
local ChangeBaseSize = require(Actions.ChangeBaseSize)
local ChangeHeight = require(Actions.ChangeHeight)
local ChangeStrength = require(Actions.ChangeStrength)
local ChangePivot = require(Actions.ChangePivot)
local SetPlaneLock = require(Actions.SetPlaneLock)
local SetSnapToGrid = require(Actions.SetSnapToGrid)
local SetIgnoreWater = require(Actions.SetIgnoreWater)
local SetBaseSizeHeightLocked = require(Actions.SetBaseSizeHeightLocked)

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)

local REDUCER_KEY = "ErodeTool"

local function MapStateToProps (state, props)
	return {
		toolName = TerrainEnums.ToolId.Erode,

		brushShape = state[REDUCER_KEY].brushShape,
		baseSize = state[REDUCER_KEY].baseSize,
		height = state[REDUCER_KEY].height,
		baseSizeHeightLocked = state[REDUCER_KEY].baseSizeHeightLocked,
		strength = state[REDUCER_KEY].strength,
		pivot = state[REDUCER_KEY].pivot,
		planeLock = state[REDUCER_KEY].planeLock,
		snapToGrid = state[REDUCER_KEY].snapToGrid,
		ignoreWater = state[REDUCER_KEY].ignoreWater,
	}
end

local function MapDispatchToProps (dispatch)
	local dispatchToErode = function(action)
		dispatch(ApplyToolAction(REDUCER_KEY, action))
	end

	return {
		dispatchChooseBrushShape = function (shape)
			dispatchToErode(ChooseBrushShape(shape))
		end,
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
		dispatchSetPlaneLock = function (planeLock)
			dispatchToErode(SetPlaneLock(planeLock))
		end,
		dispatchSetSnapToGrid = function (snapToGrid)
			dispatchToErode(SetSnapToGrid(snapToGrid))
		end,
		dispatchSetIgnoreWater = function (ignoreWater)
			dispatchToErode(SetIgnoreWater(ignoreWater))
		end,
		dispatchSetBaseSizeHeightLocked = function (locked)
			dispatchToErode(SetBaseSizeHeightLocked(locked))
		end,
	}
end

local ErodeTool = RoactRodux.connect(MapStateToProps, MapDispatchToProps)(BaseBrush)

return function(props)
	return Roact.createElement(ErodeTool)
end
