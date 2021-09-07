-- !nonstrict

local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)

export type InstanceMap = {[string]: Instance}

export type Props = {
	instanceMap: InstanceMap
}

return Framework.Util.Action(script.Name, function(instanceMap: InstanceMap)
	return {
		instanceMap = instanceMap,
	}
end)
