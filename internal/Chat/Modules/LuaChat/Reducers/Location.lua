local LuaChat = script.Parent.Parent

local ActionType = require(LuaChat.ActionType)
local Immutable = require(LuaChat.Immutable)

-- TODO: CLICHAT-570 Remove this function after Luke's changes for fast flags
local function isFFlagEnabled(flagName)
	local success, isFlagEnabled = pcall(function()
		return settings():GetFFlag(flagName)
	end)
	if success and not isFlagEnabled then
		warn("Fast Flag:", flagName, "is currently not enabled.")
	elseif not success then
		warn("GetFFlag failed for flag:", flagName)
	end
	return success and isFlagEnabled
end

local chatRemoveRouteEnabled = isFFlagEnabled("LuaChatEnableRemoveRoute")
local chatPopToIntentFixEnabled = isFFlagEnabled("LuaChatPopToIntentFixEnabled")

return function(state, action)
	state = state or {
		current = {},
		history = {}
	}

	if action.type == ActionType.SetRoute then
		local current = state.current
		local history = state.history

		local routeData = {
			intent = action.intent,
			popToIntent = action.popToIntent,
			parameters = action.parameters
		}

		if chatPopToIntentFixEnabled and action.popToIntent then
			local found = false
			for i = #history, 1, -1 do
				local loc = history[i]
				if loc.intent == action.popToIntent then
					history = Immutable.RemoveRangeFromList(history, i + 1, #history - i)
					current = history[#history]
					found = true
					break
				end
			end

			if not found then
				warn("Could not pop to unavailable intent: " .. action.popToIntent)
			end
		end

		if routeData.intent ~= nil then
			current = routeData
			history = Immutable.Append(history, routeData)
		end

		return {
			current = current,
			history = history
		}

	elseif action.type == ActionType.PopRoute then
		local current
		local history = state.history

		history = Immutable.RemoveFromList(history, #history)
		current = history[#history]
		if not current then
			current = {}
		end

		return {
			current = current,
			history = history
		}

	elseif action.type == ActionType.RemoveRoute and chatRemoveRouteEnabled then
		local intent = action.intent
		local history = state.history

		for i = #history, 1, -1 do
			local loc = history[i]
			if loc.intent == intent then
				history = Immutable.RemoveFromList(history, i)
				break
			end
		end

		local current = history[#history]

		return {
			current = current,
			history = history
		}

	end

	return state
end