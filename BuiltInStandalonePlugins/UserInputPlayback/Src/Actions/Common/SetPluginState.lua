local Plugin = script.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Action = Framework.Util.Action

local Types = require(Plugin.Src.Types)

export type Props = {
	state: Types.PluginState,
}

return Action(script.Name, function(state: Types.PluginState): Props
	return {
		state = state,
	}
end)
