local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

export type Payload = {
	metalnessMap : _Types.TextureMap
}

return Action(script.Name, function(metalnessMap : _Types.TextureMap) : Payload
	assert(type(metalnessMap) == "table", ("Expected metalnessMap to be a table received %s"):format(type(metalnessMap)))
	return {
		metalnessMap = metalnessMap,
	}
end)
