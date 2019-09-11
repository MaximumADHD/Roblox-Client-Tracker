local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Rodux)
local isEmpty = require(Plugin.Src.Util.isEmpty)

return Rodux.createReducer(nil, {
	SetAnimationData = function(state, action)
		-- AnimationData cannot contain tracks without keyframes, as tracks
		-- with no keyframes should be removed from the AnimationData table.
		local newData = action.animationData
		if newData then
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
	end,
})