--[[

]]

local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local BrushShape = TerrainEnums.BrushShape
local FlattenMode = TerrainEnums.FlattenMode
local PivotType = TerrainEnums.PivotType

local ReducerToolFlatten = Rodux.createReducer({
	brushShape = BrushShape.Sphere,
	baseSize = 6,
	height = 6,
	pivot = PivotType.Center,
	strength = 0.5,
	flattenMode = FlattenMode.Both,
	planePositionY = 30,
	planeLock = false,
	heightPicker = false,
	snapToGrid = false,
	ignoreWater = true,
}, {
	ChooseBrushShape = function(state, action)
		local brushShape = action.brushShape

		return Cryo.Dictionary.join(state, {
			brushShape = brushShape,
		})
	end,

	ChangeBaseSize = function(state, action)
		local baseSize = action.baseSize

		return Cryo.Dictionary.join(state, {
			baseSize = baseSize,
		})
	end,
	ChangeHeight = function(state, action)
		local height = action.height

		return Cryo.Dictionary.join(state, {
			height = height,
		})
	end,
	ChangeStrength = function(state, action)
		local strength = action.strength

		return Cryo.Dictionary.join(state, {
			strength = strength,
		})
	end,
	ChangePivot = function(state, action)
		local pivot = action.pivot

		return Cryo.Dictionary.join(state, {
			pivot = pivot,
		})
	end,
	ChooseFlattenMode = function(state, action)
		local flattenMode = action.flattenMode

		return Cryo.Dictionary.join(state, {
			flattenMode = flattenMode,
		})
	end,
	SetPlaneLock = function(state, action)
		local planeLock = action.planeLock

		return Cryo.Dictionary.join(state, {
			planeLock = planeLock,
		})
	end,
	ChangePlanePositionY = function(state, action)
		local planePositionY = action.planePositionY

		return Cryo.Dictionary.join(state, {
			planePositionY = planePositionY,
		})
	end,
	SetHeightPicker = function(state, action)
		local heightPicker = action.heightPicker

		return Cryo.Dictionary.join(state, {
			heightPicker = heightPicker,
		})
	end,
	SetSnapToGrid = function(state, action)
		local snapToGrid = action.snapToGrid

		return Cryo.Dictionary.join(state, {
			snapToGrid = snapToGrid,
		})
	end,
	SetIgnoreWater = function(state, action)
		local ignoreWater = action.ignoreWater

		return Cryo.Dictionary.join(state, {
			ignoreWater = ignoreWater,
		})
	end,
})

return ReducerToolFlatten
