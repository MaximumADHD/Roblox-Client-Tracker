local Plugin = script.Parent.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action
local MetaBreakpoint = require(Plugin.Src.Models.MetaBreakpoint)

export type Props = {
	metaBreakpoint : MetaBreakpoint.MetaBreakpoint,
}

return Action(script.Name, function(metaBreakpoint : MetaBreakpoint.MetaBreakpoint) : Props
	return {
		metaBreakpoint = metaBreakpoint,
	}
end)
