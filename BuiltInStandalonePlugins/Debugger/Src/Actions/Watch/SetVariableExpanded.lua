local Plugin = script.Parent.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

export type Props = {
	path : string,
	expanded : bool
}

return Action(script.Name, function(path : string, expanded : bool) : Props
	return {
		path = path,
		expanded = expanded
	}
end)
