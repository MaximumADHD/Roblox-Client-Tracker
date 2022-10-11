--[[
	Toggles Recording on/ off.
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Constants = require(Plugin.Src.Util.Constants)
local SetPlayState = require(Plugin.Src.Actions.SetPlayState)

return function(activate)
	return function(store)
		local newState = activate and Constants.PLAY_STATE.Record or Constants.PLAY_STATE.Pause
		store:dispatch(SetPlayState(newState))
	end
end
