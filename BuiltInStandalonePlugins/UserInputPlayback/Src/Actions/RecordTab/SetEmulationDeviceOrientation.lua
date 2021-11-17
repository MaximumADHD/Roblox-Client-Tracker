local Plugin = script.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Action = Framework.Util.Action

export type Props = {
	orientation: string,
}

return Action(script.Name, function(orientation: string): Props
	return {
		orientation = orientation,
	}
end)
