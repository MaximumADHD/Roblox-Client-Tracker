--[[
	Displays panels associated with the Smooth tool
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
local SetBaseSizeHeightLocked = require(Actions.SetBaseSizeHeightLocked)
local SetIgnoreWater = require(Actions.SetIgnoreWater)

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)

game:DefineFastFlag("TerrainToolsSmoothToolIgnoreWater", false)

local FFlagTerrainToolsRefactor = game:GetFastFlag("TerrainToolsRefactor")
local FFlagTerrainToolsSmoothToolIgnoreWater = game:GetFastFlag("TerrainToolsSmoothToolIgnoreWater")

local REDUCER_KEY = "SmoothTool"

local function mapStateToProps(state, props)
	local ignoreWater
	if FFlagTerrainToolsSmoothToolIgnoreWater then
		ignoreWater = state[REDUCER_KEY].ignoreWater
	end

	if FFlagTerrainToolsRefactor then
		return {
			toolName = TerrainEnums.ToolId.Smooth,

			brushShape = state[REDUCER_KEY].brushShape,
			baseSize = state[REDUCER_KEY].baseSize,
			height = state[REDUCER_KEY].height,
			baseSizeHeightLocked = state[REDUCER_KEY].baseSizeHeightLocked,
			strength = state[REDUCER_KEY].strength,
			pivot = state[REDUCER_KEY].pivot,
			planeLock = state[REDUCER_KEY].planeLock,
			snapToGrid = state[REDUCER_KEY].snapToGrid,
			ignoreWater = ignoreWater,
		}
	else
		return {
			toolName = TerrainEnums.ToolId.Smooth,

			brushShape = state[REDUCER_KEY].brushShape,
			baseSize = state[REDUCER_KEY].baseSize,
			height = state[REDUCER_KEY].height,
			baseSizeHeightLocked = state[REDUCER_KEY].baseSizeHeightLocked,
			strength = state[REDUCER_KEY].strength,
			pivot = state[REDUCER_KEY].pivot,
			planeLock = state[REDUCER_KEY].planeLock,
			snapToGrid = state[REDUCER_KEY].snapToGrid,
			autoMaterial = state[REDUCER_KEY].autoMaterial,
			material = state[REDUCER_KEY].material,
			ignoreWater = ignoreWater,
		}
	end
end

local function mapDispatchToProps(dispatch)
	local dispatchToSmooth = function(action)
		dispatch(ApplyToolAction(REDUCER_KEY, action))
	end

	return {
		dispatchChooseBrushShape = function (shape)
			dispatchToSmooth(ChooseBrushShape(shape))
		end,
		dispatchChangeBaseSize = function (size)
			dispatchToSmooth(ChangeBaseSize(size))
		end,
		dispatchChangeHeight = function (height)
			dispatchToSmooth(ChangeHeight(height))
		end,
		dispatchChangeStrength = function (strength)
			dispatchToSmooth(ChangeStrength(strength))
		end,
		dispatchChangePivot = function (pivot)
			dispatchToSmooth(ChangePivot(pivot))
		end,
		dispatchSetPlaneLock = function (planeLock)
			dispatchToSmooth(SetPlaneLock(planeLock))
		end,
		dispatchSetSnapToGrid = function (snapToGrid)
			dispatchToSmooth(SetSnapToGrid(snapToGrid))
		end,
		dispatchSetBaseSizeHeightLocked = function (locked)
			dispatchToSmooth(SetBaseSizeHeightLocked(locked))
		end,
		dispatchSetIgnoreWater = FFlagTerrainToolsSmoothToolIgnoreWater and function (ignoreWater)
			dispatchToSmooth(SetIgnoreWater(ignoreWater))
		end or nil,
	}
end

if FFlagTerrainToolsRefactor then
	return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(BaseBrush)
else
	local SmoothTool = RoactRodux.connect(mapStateToProps, mapDispatchToProps)(BaseBrush)

	return function(props)
		return Roact.createElement(SmoothTool)
	end
end
