local Plugin = script.Parent.Parent.Parent

local Action = require(Plugin.Src.Actions.Action)

return Action(script.Name, function(assetData)
	local errmsg = "assetData must be a table, received %s"
	assert(type(assetData) == "table", string.format(errmsg, type(assetData)))
	return {
		assetConfigData = assetData,
	}
end)
