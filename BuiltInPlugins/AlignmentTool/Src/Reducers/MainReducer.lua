local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)
local Rodux = require(Plugin.Packages.Rodux)

local AlignmentMode = require(Plugin.Src.Core.AlignmentMode)
local RelativeTo = require(Plugin.Src.Core.RelativeTo)

local initialState = {
	alignmentMode = AlignmentMode.Center,
	enabledAxes = {
		WorldX = false,
		WorldY = false,
		WorldZ = false,
	},
	relativeTo = RelativeTo.Selection,
}

local MainReducer = Rodux.createReducer(initialState, {
	SetAlignmentMode = function(state, action)
		return Cryo.Dictionary.join(state, {
			alignmentMode = action.alignmentMode,
		})
	end,

	SetEnabledAxes = function(state, action)
		return Cryo.Dictionary.join(state, {
			enabledAxes = action.enabledAxes,
		})
	end,

	SetRelativeTo = function(state, action)
		return Cryo.Dictionary.join(state, {
			relativeTo = action.relativeTo,
		})
	end,
})

return MainReducer
