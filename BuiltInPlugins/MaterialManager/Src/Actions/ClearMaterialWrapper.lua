local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

export type Payload = {
	MaterialWrapper: _Types.Material
}

return Action(script.Name, function(materialWrapper: _Types.Material): Payload
	assert(type(materialWrapper) == "table", ("Expected materialWrapper to be a table, received %s"):format(type(materialWrapper)))
	return {
		MaterialWrapper = materialWrapper
	}
end)
