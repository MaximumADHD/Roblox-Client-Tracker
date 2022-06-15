local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

export type Payload = {
	Index: number,
	Material: Enum.Material,
}

return Action(script.Name, function(material: Enum.Material, index: number): Payload
	assert(type(index) == "number", ("Expected index to be a number, received %s"):format(type(index)))
	return {
		Index = index,
		Material = material,
	}
end)
