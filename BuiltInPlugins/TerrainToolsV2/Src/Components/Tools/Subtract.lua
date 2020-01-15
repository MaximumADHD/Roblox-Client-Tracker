--[[
	Displays panels associated with the Subtract tool
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
local ChangePivot = require(Actions.ChangePivot)
local SetSnapToGrid = require(Actions.SetSnapToGrid)
local SetIgnoreWater = require(Actions.SetIgnoreWater)
local SetBaseSizeHeightLocked = require(Actions.SetBaseSizeHeightLocked)

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)

local FFlagTerrainToolsRefactor = game:GetFastFlag("TerrainToolsRefactor")

local REDUCER_KEY = "SubtractTool"

local function mapStateToProps(state, props)
	return {
		toolName = TerrainEnums.ToolId.Subtract,

		brushShape = state[REDUCER_KEY].brushShape,
		baseSize = state[REDUCER_KEY].baseSize,
		height = state[REDUCER_KEY].height,
		baseSizeHeightLocked = state[REDUCER_KEY].baseSizeHeightLocked,
		pivot = state[REDUCER_KEY].pivot,
		snapToGrid = state[REDUCER_KEY].snapToGrid,
		ignoreWater = state[REDUCER_KEY].ignoreWater,
	}
end

local function mapDispatchToProps (dispatch)
	local dispatchToSubtract = function(action)
		dispatch(ApplyToolAction(REDUCER_KEY, action))
	end

	return {
		dispatchChooseBrushShape = function (shape)
			dispatchToSubtract(ChooseBrushShape(shape))
		end,
		dispatchChangeBaseSize = function (size)
			dispatchToSubtract(ChangeBaseSize(size))
		end,
		dispatchChangeHeight = function (height)
			dispatchToSubtract(ChangeHeight(height))
		end,
		dispatchChangePivot = function (pivot)
			dispatchToSubtract(ChangePivot(pivot))
		end,
		dispatchSetSnapToGrid = function (snapToGrid)
			dispatchToSubtract(SetSnapToGrid(snapToGrid))
		end,
		dispatchSetIgnoreWater = function (ignoreWater)
			dispatchToSubtract(SetIgnoreWater(ignoreWater))
		end,
		dispatchSetBaseSizeHeightLocked = function (locked)
			dispatchToSubtract(SetBaseSizeHeightLocked(locked))
		end,
	}
end

if FFlagTerrainToolsRefactor then
	return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(BaseBrush)
else
	local SubtractTool = RoactRodux.connect(mapStateToProps, mapDispatchToProps)(BaseBrush)

	return function(props)
		return Roact.createElement(SubtractTool)
	end
end
