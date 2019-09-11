local Plugin = script.Parent.Parent.Parent

local Action = require(Plugin.Src.Actions.Action)

return Action(script.Name, function(assetData)
	local errmsg = "assetData arg must be a table, received %s"
	assert(type(assetData) == "table", string.format(errmsg, tostring(assetData)))
	return {
		assetGroupData = assetData,
	}
end)
