local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

export type Payload = {
	ColorMap : _Types.TextureMap?
}

return Action(script.Name, function(colorMap : _Types.TextureMap?) : Payload
	assert(not colorMap or type(colorMap) == "table", ("Expected colorMap to be nil or a table, received %s"):format(type(colorMap)))
	return {
		ColorMap = colorMap,
	}
end)
