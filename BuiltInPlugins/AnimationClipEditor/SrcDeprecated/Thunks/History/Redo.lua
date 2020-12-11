--[[
	Pops the nearest waypoint off of the Future stack so
	that the user can revert their most recent Undo action.
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Cryo = require(Plugin.Cryo)
local SetPast = require(Plugin.SrcDeprecated.Actions.SetPast)
local SetFuture = require(Plugin.SrcDeprecated.Actions.SetFuture)
local SetSelectedKeyframes = require(Plugin.SrcDeprecated.Actions.SetSelectedKeyframes)
local UpdateAnimationData = require(Plugin.SrcDeprecated.Thunks.UpdateAnimationData)
local SortAndSetTracks = require(Plugin.SrcDeprecated.Thunks.SortAndSetTracks)

return function()
	return function(store)
		local state = store:getState()
		local animationData = state.AnimationData
		local tracks = state.Status.Tracks
		local history = state.History
		local past = history.Past
		local future = history.Future

		if #future > 0 then
			past = Cryo.List.join({
				{
					AnimationData = Cryo.Dictionary.join(animationData),
					Tracks = Cryo.List.join(tracks),
				},
			}, past)
			past = Cryo.List.filter(past, function(value, index)
				return (index <= history.MaxWaypointSize)
			end)
			store:dispatch(SetPast(past))

			local newState = future[1]
			store:dispatch(UpdateAnimationData(newState.AnimationData))
			store:dispatch(SortAndSetTracks(newState.Tracks))
			store:dispatch(SetSelectedKeyframes({}))

			store:dispatch(SetFuture(Cryo.List.removeIndex(future, 1)))
		end
	end
end