local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

export type Payload = {
	StudsPerTile: number
}

return Action(script.Name, function(studsPerTile: number): Payload
	assert(type(studsPerTile) == "number", ("Expected studsPerTile to be a number, received %s"):format(type(studsPerTile)))
	return {
		StudsPerTile = studsPerTile,
	}
end)
