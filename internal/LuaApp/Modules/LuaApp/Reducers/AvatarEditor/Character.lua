local Reducers = script.Parent
local AvatarType = require(Reducers.AvatarType)
local Assets = require(Reducers.Assets)
local BodyColors = require(Reducers.BodyColors)
local Scales = require(Reducers.Scales)

return function(state, action)
	state = state or {}

	return {
		AvatarType = AvatarType(state.AvatarType, action);
		Assets = Assets(state.Assets, action);
		BodyColors = BodyColors(state.BodyColors, action);
		Scales = Scales(state.Scales, action);
	}
end
