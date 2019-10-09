--[[
	Displays panels associated with the Add tool
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
local SetAutoMaterial = require(Actions.SetAutoMaterial)
local SetMaterial = require(Actions.SetMaterial)

local REDUCER_KEY = "AddTool"

local Add = Roact.Component:extend(script.Name)

local function MapStateToProps (state, props)
	return {
		brushShape = state[REDUCER_KEY].brushShape,
		baseSize = state[REDUCER_KEY].baseSize,
		height = state[REDUCER_KEY].height,
		pivot = state[REDUCER_KEY].pivot,
		snapToGrid = state[REDUCER_KEY].snapToGrid,
		ignoreWater = state[REDUCER_KEY].ignoreWater,

		autoMaterial = state[REDUCER_KEY].autoMaterial,
		material = state[REDUCER_KEY].material,
	}
end

local function MapDispatchToProps (dispatch)
	local dispatchToAdd = function(action)
		dispatch(ApplyToolAction(REDUCER_KEY, action))
	end

	return {
		dispatchChooseBrushShape = function (shape)
			dispatchToAdd(ChooseBrushShape(shape))
		end,
		dispatchChangeBaseSize = function (size)
			dispatchToAdd(ChangeBaseSize(size))
		end,
		dispatchChangeHeight = function (height)
			dispatchToAdd(ChangeHeight(height))
		end,
		dispatchChangePivot = function (pivot)
			dispatchToAdd(ChangePivot(pivot))
		end,
		dispatchSetSnapToGrid = function (snapToGrid)
			dispatchToAdd(SetSnapToGrid(snapToGrid))
		end,
		dispatchSetAutoMaterial = function (autoMaterial)
			dispatchToAdd(SetAutoMaterial(autoMaterial))
		end,
		dispatchSetIgnoreWater = function (ignoreWater)
			dispatchToAdd(SetIgnoreWater(ignoreWater))
		end,
		dispatchSetMaterial = function (material)
			dispatchToAdd(SetMaterial(material))
		end,
	}
end

local AddTool = RoactRodux.connect(MapStateToProps, MapDispatchToProps)(BaseBrush)

return function(props)
	return Roact.createElement(AddTool)
end