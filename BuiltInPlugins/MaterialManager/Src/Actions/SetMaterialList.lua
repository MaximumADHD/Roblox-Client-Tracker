local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

export type Payload = {
	MaterialList: _Types.Array<_Types.Material>
}

return Action(script.Name, function(materialList: _Types.Array<_Types.Material>): Payload
	assert(type(materialList) == "table", ("Expected materialList to be a table, received %s"):format(type(materialList)))
	return {
		MaterialList = materialList
	}
end)
