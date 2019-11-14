--[[
	Displays panels associated with the Grow tool
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
local SetAutoMaterial = require(Actions.SetAutoMaterial)
local SetMaterial = require(Actions.SetMaterial)
local SetBaseSizeHeightLocked = require(Actions.SetBaseSizeHeightLocked)

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)

local REDUCER_KEY = "GrowTool"

local function MapStateToProps (state, props)
	return {
		toolName = TerrainEnums.ToolId.Grow,

		brushShape = state[REDUCER_KEY].brushShape,
		baseSize = state[REDUCER_KEY].baseSize,
		height = state[REDUCER_KEY].height,
		baseSizeHeightLocked = state[REDUCER_KEY].baseSizeHeightLocked,
		pivot = state[REDUCER_KEY].pivot,
		strength = state[REDUCER_KEY].strength,
		planeLock = state[REDUCER_KEY].planeLock,
		snapToGrid = state[REDUCER_KEY].snapToGrid,
		ignoreWater = state[REDUCER_KEY].ignoreWater,

		autoMaterial = state[REDUCER_KEY].autoMaterial,
		material = state[REDUCER_KEY].material,
	}
end

local function MapDispatchToProps (dispatch)
	local dispatchToGrow = function(action)
		dispatch(ApplyToolAction(REDUCER_KEY, action))
	end

	return {
		dispatchChooseBrushShape = function (shape)
			dispatchToGrow(ChooseBrushShape(shape))
		end,
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
		dispatchSetPlaneLock = function (planeLock)
			dispatchToGrow(SetPlaneLock(planeLock))
		end,
		dispatchSetSnapToGrid = function (snapToGrid)
			dispatchToGrow(SetSnapToGrid(snapToGrid))
		end,
		dispatchSetIgnoreWater = function (ignoreWater)
			dispatchToGrow(SetIgnoreWater(ignoreWater))
		end,
		dispatchSetAutoMaterial = function (autoMaterial)
			dispatchToGrow(SetAutoMaterial(autoMaterial))
		end,
		dispatchSetMaterial = function (material)
			dispatchToGrow(SetMaterial(material))
		end,
		dispatchSetBaseSizeHeightLocked = function (locked)
			dispatchToGrow(SetBaseSizeHeightLocked(locked))
		end,
	}
end

local GrowTool = RoactRodux.connect(MapStateToProps, MapDispatchToProps)(BaseBrush)

return function(props)
	return Roact.createElement(GrowTool)
end
