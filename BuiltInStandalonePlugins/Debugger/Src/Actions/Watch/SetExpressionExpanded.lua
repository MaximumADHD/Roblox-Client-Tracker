local Plugin = script.Parent.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

export type Props = {
	path: string,
	expanded: boolean,
}

return Action(script.Name, function(path: string, expanded: boolean): Props
	return {
		path = path,
		expanded = expanded,
	}
end)
