local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

export type Payload = {
	Use2022Materials: boolean
}

return Action(script.Name, function(use2022Materials: boolean): Payload
	assert(type(use2022Materials) == "boolean", ("Expected material to be a boolean, received %s"):format(type(use2022Materials)))

	return {
		Use2022Materials = use2022Materials
	}
end)
