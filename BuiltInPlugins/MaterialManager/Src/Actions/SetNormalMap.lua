local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

export type Payload = {
	NormalMap: _Types.TextureMap?
}

return Action(script.Name, function(normalMap: _Types.TextureMap?): Payload
	assert(not normalMap or type(normalMap) == "table", ("Expected normalMap to be a nil or a table, received %s"):format(type(normalMap)))
	return {
		NormalMap = normalMap,
	}
end)
