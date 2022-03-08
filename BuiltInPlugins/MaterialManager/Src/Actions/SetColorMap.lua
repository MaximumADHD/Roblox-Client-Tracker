local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

export type Payload = {
	colorMap : _Types.TextureMap
}

return Action(script.Name, function(colorMap : _Types.TextureMap) : Payload
	assert(type(colorMap) == "table", ("Expected colorMap to be a table, received %s"):format(type(colorMap)))
	return {
		colorMap = colorMap,
	}
end)
