--[[
	Keeps ReplaceTool data
]]
local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)

local Constants = require(Plugin.Src.Util.Constants)
local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local ReplaceMode = TerrainEnums.ReplaceMode
local BrushShape = TerrainEnums.BrushShape
local PivotType = TerrainEnums.PivotType

local ReplaceTool = Rodux.createReducer({
	position = {
		X = 0,
		Y = 0,
		Z = 0,
	},
	size = {
		X = 1024,
		Y = 512,
		Z = 1024,
	},
	SourceMaterial = Enum.Material.Brick,
	TargetMaterial = Enum.Material.CrackedLava,
	ReplaceMode = ReplaceMode.Box,
	brushShape = BrushShape.Sphere,
	baseSize = Constants.INITIAL_BRUSH_SIZE,
	height = Constants.INITIAL_BRUSH_SIZE,
	baseSizeHeightLocked = true,
	pivot = PivotType.Center,
	planeLock = false,
	snapToGrid = false,
	ignoreWater = true,
	ignoreParts = true,
}, {
	ChangePosition = function(state, action)
		local position = action.position

		return Cryo.Dictionary.join(state, {
			position = position,
		})
	end,

	ChangeSize = function(state, action)
		local size = action.size

		return Cryo.Dictionary.join(state, {
			size = size,
		})
	end,

	SetSourceMaterial = function(state, action)
		local SourceMaterial = action.SourceMaterial

		return Cryo.Dictionary.join(state, {
			SourceMaterial = SourceMaterial,
		})
	end,

	SetTargetMaterial = function(state, action)
		local TargetMaterial = action.TargetMaterial

		return Cryo.Dictionary.join(state, {
			TargetMaterial = TargetMaterial,
		})
	end,

	SetReplaceMode = function(state, action)
		local ReplaceMode = action.ReplaceMode

		return Cryo.Dictionary.join(state, {
			ReplaceMode = ReplaceMode,
		})
	end,

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

	ChangePivot = function(state, action)
		local pivot = action.pivot

		return Cryo.Dictionary.join(state, {
			pivot = pivot,
		})
	end,

	SetPlaneLock = function(state, action)
		local planeLock = action.planeLock

		return Cryo.Dictionary.join(state, {
			planeLock = planeLock,
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

	SetIgnoreParts = function(state, action)
		local ignoreParts = action.ignoreParts

		return Cryo.Dictionary.join(state, {
			ignoreParts = ignoreParts,
		})
	end,

	SetBaseSizeHeightLocked = function(state, action)
		local locked = action.locked
		return Cryo.Dictionary.join(state, {
			baseSizeHeightLocked = locked,
		})
	end,
})

return ReplaceTool