--[[
	Adds a waypoint to History so that Undo can return the AnimationData the
	state that it was in when this thunk was called. A specific instance of
	animation can be provided, but by default, this saves the current animation.
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Cryo = require(Plugin.Packages.Cryo)
local SetPast = require(Plugin.Src.Actions.SetPast)
local SetFuture = require(Plugin.Src.Actions.SetFuture)
local SetIsDirty = require(Plugin.Src.Actions.SetIsDirty)

local GetFFlagKeyframeReduction = require(Plugin.LuaFlags.GetFFlagKeyframeReduction)

return function(arbitraryData)
	return function(store)
		local state = store:getState()
		local animationData = if GetFFlagKeyframeReduction()
			then arbitraryData or state.AnimationData
			else state.AnimationData

		local tracks = state.Status.Tracks
		local history = state.History
		local past = history.Past

		if animationData == nil or tracks == nil then
			return
		end

		past = Cryo.List.join({
			{
				AnimationData = Cryo.Dictionary.join(animationData),
				Tracks = Cryo.List.join(tracks),
			},
		}, past)

		past = Cryo.List.filter(past, function(value, index)
			return (index <= history.MaxWaypointSize)
		end)

		store:dispatch(SetIsDirty(true))
		store:dispatch(SetPast(past))
		store:dispatch(SetFuture({}))
	end
end
