local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)

return function(state: any, action: any)
	state = state or {}

	if action.type == "SetUIGroupCollapseState" then
		return action.data
	end

	return state
end
