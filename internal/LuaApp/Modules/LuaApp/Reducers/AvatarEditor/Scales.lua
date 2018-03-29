local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules
local Immutable = require(Modules.Common.Immutable)
local SetScales = require(Modules.LuaApp.Actions.SetScales)
local SetAvatarHeight = require(Modules.LuaApp.Actions.SetAvatarHeight)
local SetAvatarWidth = require(Modules.LuaApp.Actions.SetAvatarWidth)
local SetAvatarHeadSize = require(Modules.LuaApp.Actions.SetAvatarHeadSize)
local SetAvatarBodyType = require(Modules.LuaApp.Actions.SetAvatarBodyType)
local SetAvatarProportion = require(Modules.LuaApp.Actions.SetAvatarProportion)

return function(state, action)
	state = state or {
		Height = 1.00,
		Width = 1.00,
		Depth = 1.00,
		Head = 1.00,
		BodyType = 0.00,
		Proportion = 0.00,
	}

	if action.type == SetScales.name then
		for key, value in pairs(action.scales) do
			state = Immutable.Set(state, key, value)
		end
	elseif action.type == SetAvatarHeight.name then
		return Immutable.Set(state, "Height", action.height)
	elseif action.type == SetAvatarWidth.name then
		state = Immutable.Set(state, "Width", action.width)
		return Immutable.Set(state, "Depth", action.depth)
	elseif action.type == SetAvatarHeadSize.name then
		return Immutable.Set(state, "Head", action.head)
	elseif action.type == SetAvatarBodyType.name then
		return Immutable.Set(state, "BodyType", action.bodyType)
	elseif action.type == SetAvatarProportion.name then
		return Immutable.Set(state, "Proportion", action.proportion)
	end

	return state
end

