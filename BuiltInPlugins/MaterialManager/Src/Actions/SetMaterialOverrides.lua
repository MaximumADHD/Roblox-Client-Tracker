local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

export type Payload = {
	Material: Enum.Material,
	Overrides: _Types.Array<string>
}

return Action(script.Name, function(material: Enum.Material, overrides: _Types.Array<string>): Payload
	assert(type(overrides) == "table", ("Expected overrides to be a table, received %s"):format(type(overrides)))
	return {
		Material = material,
		Overrides = overrides,
	}
end)
