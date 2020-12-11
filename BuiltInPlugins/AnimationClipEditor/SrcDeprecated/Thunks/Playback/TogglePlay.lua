--[[
	Performs step logic for an animation frame. Also updates
	playhead time.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local SetIsPlaying = require(Plugin.SrcDeprecated.Actions.SetIsPlaying)

return function()
	return function(store)
		local state = store:getState()
		local animationData = state.AnimationData

		if animationData and animationData.Metadata and animationData.Metadata.EndFrame > 0 then
			local playing = store:getState().Status.IsPlaying
			store:dispatch(SetIsPlaying(not playing))
		end

		store:getState().Analytics:onControlPressed("TogglePlay")
	end
end