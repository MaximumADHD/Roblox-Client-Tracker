local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local isEmpty = require(Plugin.Src.Util.isEmpty)

local GetFFlagChannelAnimations = require(Plugin.LuaFlags.GetFFlagChannelAnimations)

return Rodux.createReducer(nil, {
	SetAnimationData = function(state, action)
		local newData = action.animationData
		-- Channel animations can have empty tracks
		if not GetFFlagChannelAnimations() and newData then
			local instances = newData.Instances
			for _, instance in pairs(instances) do
				local tracks = instance.Tracks

				for _, track in pairs(tracks) do
					assert(not isEmpty(track.Keyframes),
					"AnimationData contained a track with an empty Keyframes array.")
				end

			end
		end
		return newData
	end,})