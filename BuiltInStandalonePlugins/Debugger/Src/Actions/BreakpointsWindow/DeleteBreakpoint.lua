local Plugin = script.Parent.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

export type Props = {
	metaBreakpointId: number,
}

return Action(script.Name, function(metaBreakpointId: number): Props
	return {
		metaBreakpointId = metaBreakpointId,
	}
end)
