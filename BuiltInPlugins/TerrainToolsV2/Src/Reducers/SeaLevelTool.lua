--[[
	Keeps SeaLevelTool data
]]

local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)

local SeaLevelTool = Rodux.createReducer({
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
	planePositionY = 0,
	heightPicker = false,
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
})

return SeaLevelTool
