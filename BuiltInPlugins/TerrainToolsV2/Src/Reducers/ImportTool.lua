local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)

local ImportTool = Rodux.createReducer({
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

	useColorMap = false,
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

	SetUseColorMap = function(state, action)
		return Cryo.Dictionary.join(state, {
			useColorMap = action.useColorMap
		})
	end
})

return ImportTool
