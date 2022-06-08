local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

export type Payload = {
	Material: _Types.Material
}

return Action(script.Name, function(Material: _Types.Material): Payload
	assert(type(Material) == "table", ("Expected material to be a table, received %s"):format(type(Material)))
	return {
		Material = Material
	}
end)
