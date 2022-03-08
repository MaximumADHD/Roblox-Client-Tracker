local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

export type Payload = {
	Path : _Types.Path
}

return Action(script.Name, function(path : _Types.Path) : Payload
	assert(type(path) == "table", ("Expected oath to be a table, received %s"):format(type(path)))
	return {
		Path = path
	}
end)
