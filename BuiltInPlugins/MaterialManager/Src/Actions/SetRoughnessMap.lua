local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

export type Payload = {
	roughnessMap : _Types.TextureMap
}

return Action(script.Name, function(roughnessMap : _Types.TextureMap) : Payload
	assert(type(roughnessMap) == "table", ("Expected roughnessMap to be a table, received %s"):format(type(roughnessMap)))
	return {
		roughnessMap = roughnessMap,
	}
end)
