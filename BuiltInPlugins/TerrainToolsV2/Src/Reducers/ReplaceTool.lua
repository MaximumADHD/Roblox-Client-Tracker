--[[
	Keeps ReplaceTool data
]]

local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)

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
})

return ReplaceTool
