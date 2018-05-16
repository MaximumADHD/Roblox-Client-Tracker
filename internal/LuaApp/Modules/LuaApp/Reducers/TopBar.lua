local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Immutable = require(Modules.Common.Immutable)

local SetStatusBarHeight = require(Modules.LuaApp.Actions.SetStatusBarHeight)
local SetNavBarHeight = require(Modules.LuaApp.Actions.SetNavBarHeight)

local DEFAULT_TOP_BAR_HEIGHT = 42
local DEFAULT_TOP_SYSTEM_PADDING = 21

return function(state, action)
	state = state or {
		statusBarHeight = DEFAULT_TOP_SYSTEM_PADDING,
		navBarHeight = DEFAULT_TOP_BAR_HEIGHT,
		totalHeight = DEFAULT_TOP_BAR_HEIGHT + DEFAULT_TOP_SYSTEM_PADDING,
	}

	if action.type == SetStatusBarHeight.name then
		if state.statusBarHeight ~= action.statusBarHeight then
			local newProperties = {
				statusBarHeight = action.statusBarHeight,
				totalHeight = state.navBarHeight + action.statusBarHeight,
			}
			state = Immutable.JoinDictionaries(state, newProperties)
		end
	elseif action.type == SetNavBarHeight.name then
		if state.navBarHeight ~= action.navBarHeight then
			local newProperties = {
				navBarHeight = action.navBarHeight,
				totalHeight = action.navBarHeight + state.statusBarHeight,
			}
			state = Immutable.JoinDictionaries(state, newProperties)
		end
	end

	return state
end