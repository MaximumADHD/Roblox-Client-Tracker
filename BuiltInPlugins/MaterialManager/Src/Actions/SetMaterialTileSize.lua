local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

export type Payload = {
	MaterialTileSize : number
}

return Action(script.Name, function(MaterialTileSize : number) : Payload
	assert(type(MaterialTileSize) == "number", ("Expected material to be a number, received %s"):format(type(MaterialTileSize)))
	return {
		MaterialTileSize = MaterialTileSize
	}
end)
