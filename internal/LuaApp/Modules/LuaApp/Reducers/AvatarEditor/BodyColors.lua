local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules
local Immutable = require(Modules.Common.Immutable)
local SetBodyColors = require(Modules.LuaApp.Actions.SetBodyColors)
local SetOutfit = require(Modules.LuaApp.Actions.SetOutfit)

return function(state, action)
	state = state or {
		HeadColor = 194,
		LeftArmColor = 194,
		LeftLegColor = 194,
		RightArmColor = 194,
		RightLegColor = 194,
		TorsoColor = 194,
	}

	if action.type == SetBodyColors.name or action.type == SetOutfit.name then
		for key, value in pairs(action.bodyColors) do
			state = Immutable.Set(state, key, value)
		end
	end

	return state
end

