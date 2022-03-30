local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

export type Payload = {
	MetalnessMap : _Types.TextureMap?
}

return Action(script.Name, function(metalnessMap : _Types.TextureMap?) : Payload
	assert(not metalnessMap or type(metalnessMap) == "table", ("Expected metalnessMap to be nil or a table received %s"):format(type(metalnessMap)))
	return {
		MetalnessMap = metalnessMap,
	}
end)
