--[[
	Displays panels associated with the Flatten tool
]]
local Plugin = script.Parent.Parent.Parent.Parent

local RoactRodux = require(Plugin.Packages.RoactRodux)

local BaseBrush = require(Plugin.Src.Components.Tools.BaseBrush)

local Actions = Plugin.Src.Actions
local ApplyToolAction = require(Actions.ApplyToolAction)
local ChangeBaseSize = require(Actions.ChangeBaseSize)
local ChangeHeight = require(Actions.ChangeHeight)
local ChangePivot = require(Actions.ChangePivot)
local ChangePlanePositionY = require(Actions.ChangePlanePositionY)
local ChangeStrength = require(Actions.ChangeStrength)
local ChooseBrushShape = require(Actions.ChooseBrushShape)
local ChooseFlattenMode = require(Actions.ChooseFlattenMode)
local SetBaseSizeHeightLocked = require(Actions.SetBaseSizeHeightLocked)
local SetFixedPlane = require(Actions.SetFixedPlane)
local SetHeightPicker = require(Actions.SetHeightPicker)
local SetIgnoreWater = require(Actions.SetIgnoreWater)
local SetIgnoreParts = require(Actions.SetIgnoreParts)
local SetSnapToGrid = require(Actions.SetSnapToGrid)

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local ToolId = TerrainEnums.ToolId

local REDUCER_KEY = "FlattenTool"

local function mapStateToProps(state, props)
	return {
		toolName = ToolId.Flatten,

		baseSize = state[REDUCER_KEY].baseSize,
		baseSizeHeightLocked = state[REDUCER_KEY].baseSizeHeightLocked,
		brushShape = state[REDUCER_KEY].brushShape,
		fixedPlane = state[REDUCER_KEY].fixedPlane,
		flattenMode = state[REDUCER_KEY].flattenMode,
		height = state[REDUCER_KEY].height,
		heightPicker = state[REDUCER_KEY].heightPicker,
		ignoreWater = state[REDUCER_KEY].ignoreWater,
		ignoreParts = state[REDUCER_KEY].ignoreParts,
		pivot = state[REDUCER_KEY].pivot,
		planePositionY = state[REDUCER_KEY].planePositionY,
		snapToGrid = state[REDUCER_KEY].snapToGrid,
		strength = state[REDUCER_KEY].strength,
	}
end

local function mapDispatchToProps(dispatch)
	local dispatchToFlatten = function(action)
		dispatch(ApplyToolAction(REDUCER_KEY, action))
	end

	return {
		dispatchChangeBaseSize = function (size)
			dispatchToFlatten(ChangeBaseSize(size))
		end,
		dispatchChangeHeight = function (height)
			dispatchToFlatten(ChangeHeight(height))
		end,
		dispatchChangePivot = function (pivot)
			dispatchToFlatten(ChangePivot(pivot))
		end,
		dispatchChangePlanePositionY = function (planePositionY)
			dispatchToFlatten(ChangePlanePositionY(planePositionY))
		end,
		dispatchChangeStrength = function (strength)
			dispatchToFlatten(ChangeStrength(strength))
		end,
		dispatchChooseBrushShape = function (shape)
			dispatchToFlatten(ChooseBrushShape(shape))
		end,
		dispatchChooseFlattenMode = function (flattenMode)
			dispatchToFlatten(ChooseFlattenMode(flattenMode))
		end,
		dispatchSetBaseSizeHeightLocked = function (locked)
			dispatchToFlatten(SetBaseSizeHeightLocked(locked))
		end,
		dispatchSetFixedPlane = function (fixedPlane)
			dispatchToFlatten(SetFixedPlane(fixedPlane))
		end,
		dispatchSetHeightPicker = function (heightPicker)
			dispatchToFlatten(SetHeightPicker(heightPicker))
		end,
		dispatchSetIgnoreWater = function (ignoreWater)
			dispatchToFlatten(SetIgnoreWater(ignoreWater))
		end,
		dispatchSetIgnoreParts = function(ignoreParts)
			dispatchToFlatten(SetIgnoreParts(ignoreParts))
		end,
		dispatchSetSnapToGrid = function (snapToGrid)
			dispatchToFlatten(SetSnapToGrid(snapToGrid))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(BaseBrush)
