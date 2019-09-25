local Plugin = script.Parent.Parent.Parent

local Action = require(Plugin.Src.Actions.Action)

return Action(script.Name, function(assetName)
	local errmsg = "assetName arg must be a string, received %s"
	assert(type(assetName) == "string", string.format(errmsg, tostring(assetName)))
	return {
		assetName= assetName,
	}
end)
