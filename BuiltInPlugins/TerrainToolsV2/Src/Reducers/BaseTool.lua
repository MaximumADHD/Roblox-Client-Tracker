--[[

]]
local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)

local Constants = require(Plugin.Src.Util.Constants)
local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)

local BrushShape = TerrainEnums.BrushShape
local PivotType = TerrainEnums.PivotType
local FlattenMode = TerrainEnums.FlattenMode
local PlaneLockType = TerrainEnums.PlaneLockType
local ReplaceMode = TerrainEnums.ReplaceMode

local FFlagTerrainToolsEditPlaneLock = game:GetFastFlag("TerrainToolsEditPlaneLock")

local BaseTool = Rodux.createReducer({
	autoMaterial = false,
	baseSize = Constants.INITIAL_BRUSH_SIZE,
	baseSizeHeightLocked = true,
	brushShape = BrushShape.Sphere,
	editPlaneMode = false,
	fixedPlane = false,
	flattenMode = FlattenMode.Both,
	height = Constants.INITIAL_BRUSH_SIZE,
	heightPicker = false,
	ignoreParts = true,
	ignoreWater = false,
	material = Enum.Material.Grass,
	pivot = PivotType.Center,
	planeCFrame = nil,
	planeLock = FFlagTerrainToolsEditPlaneLock and PlaneLockType.Auto or true,
	planePositionY = Constants.INITIAL_PLANE_POSITION_Y,
	position = {
		X = 0,
		Y = 0,
		Z = 0,
	},
	ReplaceMode = ReplaceMode.Box,
	size = {
		X = 1024,
		Y = 512,
		Z = 1024,
	},
	snapToGrid = false,
	SourceMaterial = Enum.Material.Brick,
	TargetMaterial = Enum.Material.CrackedLava,
}, {
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
	ChangePlanePositionY = function(state, action)
		local planePositionY = action.planePositionY

		return Cryo.Dictionary.join(state, {
			planePositionY = planePositionY,
		})
	end,
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
	ChooseBrushShape = function(state, action)
		local brushShape = action.brushShape

		return Cryo.Dictionary.join(state, {
			brushShape = brushShape,
		})
	end,
	ChooseFlattenMode = function(state, action)
		local flattenMode = action.flattenMode

		return Cryo.Dictionary.join(state, {
			flattenMode = flattenMode,
		})
	end,
	SetAutoMaterial = function(state, action)
		local autoMaterial = action.autoMaterial

		return Cryo.Dictionary.join(state, {
			autoMaterial = autoMaterial,
		})
	end,
	SetBaseSizeHeightLocked = function(state, action)
		local locked = action.locked
		return Cryo.Dictionary.join(state, {
			baseSizeHeightLocked = locked,
		})
	end,
	SetEditPlaneMode = function(state, action)
		local editPlaneMode = action.editPlaneMode
		
		return Cryo.Dictionary.join(state, {
			editPlaneMode = editPlaneMode,
		})
	end,
	SetFixedPlane = function(state, action)
		local fixedPlane = action.fixedPlane

		return Cryo.Dictionary.join(state, {
			fixedPlane = fixedPlane,
		})
	end,
	SetHeightPicker = function(state, action)
		local heightPicker = action.heightPicker

		return Cryo.Dictionary.join(state, {
			heightPicker = heightPicker,
		})
	end,
	SetIgnoreParts = function(state, action)
		local ignoreParts = action.ignoreParts

		return Cryo.Dictionary.join(state, {
			ignoreParts = ignoreParts,
		})
	end,
	SetIgnoreWater = function(state, action)
		local ignoreWater = action.ignoreWater

		return Cryo.Dictionary.join(state, {
			ignoreWater = ignoreWater,
		})
	end,
	SetMaterial = function(state, action)
		local material = action.material
		return Cryo.Dictionary.join(state, {
			material = material,
		})
	end,
	SetPlaneCFrame = function(state, action)
		local planeCFrame = action.planeCFrame

		return Cryo.Dictionary.join(state, {
			planeCFrame = planeCFrame,
		})
	end,
	SetPlaneLock = function(state, action)
		local planeLock = action.planeLock

		return Cryo.Dictionary.join(state, {
			planeLock = planeLock,
		})
	end,
	SetReplaceMode = function(state, action)
		local ReplaceMode = action.ReplaceMode

		return Cryo.Dictionary.join(state, {
			ReplaceMode = ReplaceMode,
		})
	end,
	SetSnapToGrid = function(state, action)
		local snapToGrid = action.snapToGrid

		return Cryo.Dictionary.join(state, {
			snapToGrid = snapToGrid,
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
})
return BaseTool
